import { getMenu } from "./utils/api.js";

async function renderMenu() {
  const menuContainer = document.getElementById("menu-container");
  const menu = await getMenu();

  if (!menu) {
    menuContainer.innerHTML = "<p>Failed to load menu.</p>";
    return;
  }

  // Clear any existing content
  menuContainer.innerHTML = "";

  Object.keys(menu).forEach((category) => {
    const categoryDiv = document.createElement("div");
    categoryDiv.classList.add("menu-category");

    const heading = document.createElement("h2");
    heading.textContent = category;
    categoryDiv.appendChild(heading);

    menu[category].forEach((item) => {
      const itemDiv = document.createElement("div");
      itemDiv.classList.add("menu-item");
      itemDiv.innerHTML = `<strong>${item.name}</strong> - $${item.price.toFixed(2)}`;
      categoryDiv.appendChild(itemDiv);
    });

    menuContainer.appendChild(categoryDiv);
  });
}

renderMenu();
