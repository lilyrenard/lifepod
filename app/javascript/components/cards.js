export function changeSize() {
  const content = document.querySelectorAll(".card-header");

  content.forEach((balise) => {
    const card = document.querySelector(".card-header");
    const innerbalise = balise.innerHTML
    console.log(innerbalise)
    if (innerbalise.includes("#photo")) {
    card.style.height = "295px";
  } else {
    card.style.height = "153px";
  }
  });
}
