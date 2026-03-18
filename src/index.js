import { getMenu } from "./utils/api.js";

const menuContainer = document.querySelector("#menu-container");

const loadMenu = async () => {
  try {
    const data = await getMenu();
    console.log(data);

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

loadMenu();
