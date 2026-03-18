import { getMenu, postReservation, postContact } from "./utils/api.js";

// Menu

const menuContainer = document.querySelector("#menu-container");

// Signature pairings
const SIGNATURE_PAIRINGS = [
  {
    drink: "The Red Eye Act",
    match: "The Senator (Spliff)",
    note: "THC cold brew + slow burning spliff. The long afternoon.",
    intensity: "heavy",
  },
  {
    drink: "May the Cortado Be With You",
    match: "The Cortado Hit",
    note: "Balance meets balance. Neither side wins.",
    intensity: "balanced",
  },
  {
    drink: "The Kessel Pour",
    match: "The Force Multiplier",
    note: "Single origin pour over + citrus THC drop. Same frequency.",
    intensity: "light",
  },
  {
    drink: "Yoda's Green",
    match: "The Force Multiplier",
    note: "Green tea + THC tincture. Ancient and intentional.",
    intensity: "mellow",
  },
];

// Format display
const FORMAT_ORDER = [
  "THC Infusion — Add to Any Drink",
  "THC Drinkable",
  "Joint — In-House",
  "Small Bowl — In-House",
  "Spliff — In-House",
  "Half Blunt — In-House",
  "Roll Your Own — In-House Kit",
  "Roll Your Own — Full Kit",
  "Take Home — 3.5g Flower",
  "Take Home — Pre-Roll 2-Pack",
  "Take Home — Tincture 30ml",
];

// Format group labels
const FORMAT_LABELS = {
  "THC Infusion — Add to Any Drink": "Add to Your Drink",
  "THC Drinkable": "Drinkables",
  "Joint — In-House": "Joint",
  "Small Bowl — In-House": "Small Bowl",
  "Spliff — In-House": "Spliff",
  "Half Blunt — In-House": "Half Blunt",
  "Roll Your Own — In-House Kit": "Roll Your Own",
  "Roll Your Own — Full Kit": "Roll Your Own",
  "Take Home — 3.5g Flower": "Take Home",
  "Take Home — Pre-Roll 2-Pack": "Take Home",
  "Take Home — Tincture 30ml": "Take Home",
};

// Intensity, color class
const INTENSITY_CLASS = {
  light: "reserve__pair--light",
  balanced: "reserve__pair--balanced",
  heavy: "reserve__pair--heavy",
  mellow: "reserve__pair--mellow",
};

const buildSignaturePairings = () => {
  const section = document.createElement("div");
  section.classList.add("reserve__signatures");

  const heading = document.createElement("p");
  heading.classList.add("reserve__signatures-label");
  heading.textContent = "Signature Pairings";
  section.appendChild(heading);

  const grid = document.createElement("div");
  grid.classList.add("reserve__pair-grid");

  SIGNATURE_PAIRINGS.forEach((pair) => {
    const card = document.createElement("div");
    card.classList.add("reserve__pair", INTENSITY_CLASS[pair.intensity]);

    card.innerHTML = `
      <span class="reserve__pair-drink">${pair.drink}</span>
      <span class="reserve__pair-plus">+</span>
      <span class="reserve__pair-match">${pair.match}</span>
      <p class="reserve__pair-note">${pair.note}</p>
    `;

    grid.appendChild(card);
  });

  section.appendChild(grid);
  return section;
};

const buildReserveFullList = (items) => {
  const section = document.createElement("div");
  section.classList.add("reserve__full-list");

  const heading = document.createElement("p");
  heading.classList.add("reserve__full-list-label");
  heading.textContent = "Full Menu";
  section.appendChild(heading);

  // Group items by format
  const grouped = {};
  items.forEach((item) => {
    const label = FORMAT_LABELS[item.format] || item.format;
    if (!grouped[label]) grouped[label] = [];
    grouped[label].push(item);
  });

  // Render in order
  const seenLabels = new Set();
  FORMAT_ORDER.forEach((format) => {
    const label = FORMAT_LABELS[format];
    if (!label || seenLabels.has(label) || !grouped[label]) return;
    seenLabels.add(label);

    const group = document.createElement("div");
    group.classList.add("reserve__format-group");

    const formatTitle = document.createElement("h6");
    formatTitle.classList.add("reserve__format-title");
    formatTitle.textContent = label;
    group.appendChild(formatTitle);

    const list = document.createElement("ul");
    list.classList.add("reserve__format-list");

    grouped[label].forEach((item) => {
      const li = document.createElement("li");
      li.classList.add("reserve__format-item");

      const namePrice = document.createElement("div");
      namePrice.classList.add("reserve__item-row");
      namePrice.innerHTML = `
        <span class="reserve__item-name">${item.name}</span>
        <span class="reserve__item-divider"></span>
        <span class="reserve__item-price">$${Number(item.price).toFixed(2)}</span>
      `;
      li.appendChild(namePrice);

      if (item.pairing) {
        const pairing = document.createElement("p");
        pairing.classList.add("reserve__item-pairing");
        pairing.textContent = item.pairing;
        li.appendChild(pairing);
      }

      list.appendChild(li);
    });

    group.appendChild(list);
    section.appendChild(group);
  });

  return section;
};

const buildRegularItem = (item) => {
  const listItem = document.createElement("li");
  listItem.classList.add("card__list-item");

  const nameSpan = document.createElement("span");
  nameSpan.classList.add("card__item-name");
  nameSpan.textContent = item.name;

  const divider = document.createElement("span");
  divider.classList.add("card__list-divider");

  const priceSpan = document.createElement("span");
  priceSpan.classList.add("card__item-price");
  priceSpan.textContent = `$${Number(item.price).toFixed(2)}`;

  listItem.append(nameSpan, divider, priceSpan);

  if (item.description) {
    const desc = document.createElement("p");
    desc.classList.add("card__item-description");
    desc.textContent = item.description;
    listItem.appendChild(desc);
  }

  return listItem;
};

const loadMenu = async () => {
  menuContainer.innerHTML = '<li class="menu__loading">Loading menu...</li>';

  const data = await getMenu();

  if (!data || Object.keys(data).length === 0) {
    menuContainer.innerHTML =
      '<li class="menu__empty">Menu unavailable. Please check back soon.</li>';
    return;
  }

  menuContainer.innerHTML = "";

  Object.keys(data).forEach((category) => {
    const categoryCard = document.createElement("li");
    categoryCard.classList.add("card");

    const title = document.createElement("h5");
    title.classList.add("card__title");
    title.textContent = category;
    categoryCard.appendChild(title);

    if (category === "The Reserve") {
      categoryCard.classList.add("card--reserve");
      categoryCard.appendChild(buildSignaturePairings());
      categoryCard.appendChild(buildReserveFullList(data[category]));
    } else {
      const list = document.createElement("ul");
      list.classList.add("card__list");
      data[category].forEach((item) =>
        list.appendChild(buildRegularItem(item)),
      );
      categoryCard.appendChild(list);
    }

    menuContainer.appendChild(categoryCard);
  });
};

// Reservation form

const reservationForm = document.querySelector(".reservation__form");

if (reservationForm) {
  reservationForm.addEventListener("submit", async (e) => {
    e.preventDefault();

    const data = {
      name: document.querySelector("#name").value.trim(),
      guests: parseInt(document.querySelector("#number-of-guests").value, 10),
      date_time: document.querySelector("#date-time").value,
      email: document.querySelector("#email").value.trim(),
    };

    try {
      const result = await postReservation(data);
      alert(`Reservation confirmed for ${result.name}`);
      reservationForm.reset();
    } catch (err) {
      console.error("Reservation failed:", err);
      alert("Error submitting reservation. Try again.");
    }
  });
}

// Contact form

const contactForm = document.querySelector(".contact__form");

if (contactForm) {
  contactForm.addEventListener("submit", async (e) => {
    e.preventDefault();

    const data = {
      name: document.querySelector("#contact-name").value.trim(),
      email: document.querySelector("#contact-email").value.trim(),
      message: document.querySelector("#contact-message").value.trim(),
    };

    try {
      await postContact(data);
      alert("Message sent successfully!");
      contactForm.reset();
    } catch (err) {
      console.error("Contact failed:", err);
      alert("Error sending message. Try again.");
    }
  });
}

//Init

loadMenu();
