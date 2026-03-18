import { getMenu, postReservation, postContact } from "./utils/api.js";

// Menu

const menuContainer = document.querySelector("#menu-container");

const buildMenuItem = (item) => {
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

    const list = document.createElement("ul");
    list.classList.add("card__list");
    data[category].forEach((item) => list.appendChild(buildMenuItem(item)));
    categoryCard.appendChild(list);

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

// Init

loadMenu();
