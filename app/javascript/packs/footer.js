

function showFooter() {
  const footer = document.getElementById("myFooter")
  footer.classList.toggle('invisible')
}

export function click() {
  const boutton = document.getElementById("versCategories")
  const croix = document.getElementById("fermer")
  boutton.addEventListener('click', showFooter)
  croix.addEventListener('click', showFooter)
}

click();
