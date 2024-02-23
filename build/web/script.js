let profileDropdownList = document.querySelector(".profile-dropdown-list");
let btn1 = document.querySelector(".profile-dropdown-btn");

let classList = profileDropdownList.classList;

const toggle = () => classList.toggle("active");

window.addEventListener("click", function (e) {
  if (!btn1.contains(e.target)) classList.remove("active");
});
