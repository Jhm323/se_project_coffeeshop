import { getMenu } from "./utils/api.js";

const menuContainer = document.querySelector("#menu");

const loadMenu = async () => {
  const data = await getMenu();

  console.log(data);

  // render menu
  Object.keys(data).forEach((category) => {
    const section = document.createElement("div");

    section.innerHTML = `<h2>${category}</h2>`;

    data[category].forEach((item) => {
      const el = document.createElement("p");
      el.textContent = `${item.name} - $${item.price}`;
      section.appendChild(el);
    });

    menuContainer.appendChild(section);
  });
};

loadMenu();
