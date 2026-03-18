import { getMenu, postReservation, postContact } from "./utils/api.js";

// Menu
const menuContainer = document.querySelector("#menu-container");

const loadMenu = async () => {
  try {
    const data = await getMenu();
    menuContainer.innerHTML = "";

    Object.keys(data).forEach((category) => {
      const categoryCard = document.createElement("li");
      categoryCard.classList.add("card");

      const title = document.createElement("h5");
      title.classList.add("card__title");
      title.textContent = category;

      const list = document.createElement("ul");
      list.classList.add("card__list");

      data[category].forEach((item) => {
        const listItem = document.createElement("li");
        listItem.classList.add("card__list-item");
        listItem.textContent = `${item.name} - $${item.price.toFixed(2)}`;

        list.appendChild(listItem);
      });

      categoryCard.append(title, list);
      menuContainer.appendChild(categoryCard);
    });
  } catch (err) {
    console.error("Failed to load menu:", err);
  }
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

//Contact form
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
