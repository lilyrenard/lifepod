export function changeSize() {
  const content = document.querySelectorAll(".card-header");

  console.log(content);
  content.forEach((balise) => {
    const card = document.querySelector(".card-header");
    console.log(balise)
    const innerbalise = balise.innerHTML
    console.log(innerbalise)
    if (innerbalise.includes("#photo")) {
    card.style.height = "295px";
  } else {
    card.style.height = "153px";
  }
  });
}
