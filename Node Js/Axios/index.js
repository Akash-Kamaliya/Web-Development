const axios = require("axios");

async function main() {
  try {
    const response = await axios.get("https://jsonplaceholder.typicode.com/users");

    const users = response.data;

    const ids = users.map(user => user.id);

    console.log("Original IDs:", ids);

    const unique = [...new Set(ids)];


    const sorted = unique.sort((a, b) => a - b);

    console.log("Unique IDs:", unique);
    console.log("Sorted IDs:", sorted);

  } catch (error) {
    console.log("Error fetching data:", error.message);
  }
}

main();
