import { getMenu, postReservation, postContact } from "./utils/api.js";
// Menu
const menuContainer = document.querySelector("#menu-container");

const loadMenu = async () => {
  try {
    const data = await getMenu();
    // Clear container
    menuContainer.innerHTML = "";
    // Render menu
    Object.keys(data).forEach((category) => {
      // Category card
      const categoryCard = document.createElement("li");
      categoryCard.classList.add("card");

      const title = document.createElement("h5");
      title.classList.add("card__title");
      title.textContent = category;
      categoryCard.appendChild(title);

      const list = document.createElement("ul");
      list.classList.add("card__list");

      data[category].forEach((item) => {
        const listItem = document.createElement("li");
        listItem.classList.add("card__list-item");
        listItem.textContent = `${item.name} - $${item.price.toFixed(2)}`;

        const divider = document.createElement("span");
        divider.classList.add("card__list-divider");
        listItem.appendChild(divider);

        list.appendChild(listItem);
      });

      categoryCard.appendChild(list);
      menuContainer.appendChild(categoryCard);
    });
  } catch (err) {
    console.error("Failed to load menu:", err);
  }
};

// RESERVATION FORM
const reservationForm = document.querySelector(".reservation__form");

if (reservationForm) {
  reservationForm.addEventListener("submit", async (e) => {
    e.preventDefault();

    const formData = {
      name: document.querySelector("#name").value.trim(),
      guests: parseInt(document.querySelector("#number-of-guests").value, 10),
      date_time: document.querySelector("#date-time").value,
      email: document.querySelector("#email").value.trim(),
    };

    try {
      const result = await postReservation(formData);
      alert(
        `Reservation confirmed for ${result.name} on ${new Date(result.date_time).toLocaleString()}`,
      );
      reservationForm.reset();
    } catch (err) {
      console.error("Reservation failed:", err);
      alert("Failed to book reservation. Please try again.");
    }
  });
}

// CONTACT FORM
const contactForm = document.querySelector(".contact__form");

if (contactForm) {
  contactForm.addEventListener("submit", async (e) => {
    e.preventDefault();

    const formData = {
      name: document.querySelector("#contact-name").value.trim(),
      email: document.querySelector("#contact-email").value.trim(),
      message: document.querySelector("#contact-message").value.trim(),
    };

    try {
      const result = await postContact(formData);
      alert("Message sent! Thank you for contacting us.");
      contactForm.reset();
    } catch (err) {
      console.error("Failed to send contact message:", err);
      alert("Failed to send message. Please try again.");
    }
  });
}

loadMenu();
