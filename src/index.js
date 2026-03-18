import { getMenu, postReservation, postContact } from "./utils/api.js";

//menu

const menuContainer = document.querySelector("#menu-container");

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

const buildReserveItem = (item) => {
  const listItem = document.createElement("li");
  listItem.classList.add("card__list-item", "card__list-item--reserve");

  const header = document.createElement("div");
  header.classList.add("card__item-header");

  const nameSpan = document.createElement("span");
  nameSpan.classList.add("card__item-name");
  nameSpan.textContent = item.name;

  const priceSpan = document.createElement("span");
  priceSpan.classList.add("card__item-price");
  priceSpan.textContent = `$${Number(item.price).toFixed(2)}`;

  header.append(nameSpan, priceSpan);
  listItem.appendChild(header);

  if (item.format) {
    const formatBadge = document.createElement("span");
    formatBadge.classList.add("card__item-format");
    formatBadge.textContent = item.format;
    listItem.appendChild(formatBadge);
  }

  if (item.description) {
    const desc = document.createElement("p");
    desc.classList.add("card__item-description");
    desc.textContent = item.description;
    listItem.appendChild(desc);
  }

  if (item.terpenes) {
    const terpenes = document.createElement("p");
    terpenes.classList.add("card__item-terpenes");
    terpenes.textContent = `Terpenes: ${item.terpenes}`;
    listItem.appendChild(terpenes);
  }

  if (item.pairing) {
    const pairing = document.createElement("p");
    pairing.classList.add("card__item-pairing");
    pairing.textContent = `Pairs with: ${item.pairing}`;
    listItem.appendChild(pairing);
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

    if (category === "The Reserve") {
      categoryCard.classList.add("card--reserve");
    }

    const title = document.createElement("h5");
    title.classList.add("card__title");
    title.textContent = category;

    const list = document.createElement("ul");
    list.classList.add("card__list");

    data[category].forEach((item) => {
      const listItem =
        category === "The Reserve"
          ? buildReserveItem(item)
          : buildRegularItem(item);
      list.appendChild(listItem);
    });

    categoryCard.append(title, list);
    menuContainer.appendChild(categoryCard);
  });
};

//reservation form

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

// contact form

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

//init

loadMenu();
