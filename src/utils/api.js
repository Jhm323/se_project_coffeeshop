const BASE_URL = "https://coffee-shop-api-hagu.onrender.com";

export async function getMenu() {
  try {
    const response = await fetch(`${BASE_URL}/menu`);
    if (!response.ok) {
      throw new Error(`HTTP error! status: ${response.status}`);
    }
    const data = await response.json();
    return data;
  } catch (err) {
    console.error("Error fetching menu:", err);
    return null;
  }
}

export const createMenuItem = async (item) => {
  const res = await fetch(`${BASE_URL}/menu`, {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
    },
    body: JSON.stringify(item),
  });
  return res.json();
};

export const updateMenuItem = async (id, updates) => {
  const res = await fetch(`${BASE_URL}/menu/${id}`, {
    method: "PUT",
    headers: {
      "Content-Type": "application/json",
    },
    body: JSON.stringify(updates),
  });
  return res.json();
};

export const postContact = async (data) => {
  const res = await fetch(`${BASE_URL}/contact`, {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
    },
    body: JSON.stringify(data),
  });
  return res.json();
};

export const postReservation = async (data) => {
  const res = await fetch(`${BASE_URL}/reservations`, {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
    },
    body: JSON.stringify(data),
  });
  return res.json();
};
