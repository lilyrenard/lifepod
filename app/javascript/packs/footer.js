function showFooter() {
  const footer = document.getElementById("myFooter")
  footer.classList.toggle('invisible')
}

export function click() {
  const boutton = document.getElementById("versCategories")
  const croix = document.getElementById("fermer")
  const pictos = document.querySelectorAll('.picto-to-click')
  boutton.addEventListener('click', showFooter)
  croix.addEventListener('click', showFooter)
  pictos.forEach(picto => picto.addEventListener('click', showFooter))
}

click();
