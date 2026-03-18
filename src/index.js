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

reservationForm.addEventListener("submit", async (e) => {
  e.preventDefault(); // prevent page reload

  const data = {
    name: document.querySelector("#name").value,
    guests: document.querySelector("#number-of-guests").value,
    date_time: document.querySelector("#date-time").value,
    email: document.querySelector("#email").value,
  };

  try {
    const res = await fetch("http://localhost:5000/reservations", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(data),
    });

    if (!res.ok) throw new Error("Failed to submit reservation");

    const result = await res.json();
    alert(`Reservation confirmed! ID: ${result.id}`);
    reservationForm.reset();
  } catch (err) {
    console.error(err);
    alert("Error submitting reservation. Try again.");
  }
});

// CONTACT FORM
const contactForm = document.querySelector(".contact__form");

contactForm.addEventListener("submit", async (e) => {
  e.preventDefault();

  const data = {
    name: document.querySelector("#contact-name").value,
    email: document.querySelector("#contact-email").value,
    message: document.querySelector("#contact-message").value,
  };

  try {
    const res = await fetch("http://localhost:5000/contact", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(data),
    });

    if (!res.ok) throw new Error("Failed to send message");

    const result = await res.json();
    alert("Message sent successfully!");
    contactForm.reset();
  } catch (err) {
    console.error(err);
    alert("Error sending message. Try again.");
  }
});

loadMenu();
