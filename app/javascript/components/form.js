const toggleForm = () => {
  console.log("Hello")
  const button = document.getElementById("js-toggle-form");
  const form = document.querySelector("#new_pokemon");
  button.addEventListener("click", () => {
    form.classList.toggle("d-none");
  });
};

export { toggleForm };
