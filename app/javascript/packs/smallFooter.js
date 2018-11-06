function showSmallFooter() {
  const footer = document.getElementById("mySmallFooter");
  footer.classList.toggle('invisible');
}
const pictos = document.querySelectorAll('.picto-to-click');
pictos.forEach(picto => picto.addEventListener('click', showSmallFooter));

document.querySelectorAll('.picto-to-click').forEach(picto => picto.addEventListener('click', (event) => {
  if (event.currentTarget.dataset.categorie === "photo") {
    document.querySelector('.small-item-categories > .fa-image').classList.add('selected-picto')
  } else if (event.currentTarget.dataset.categorie === "video") {
    document.querySelector('.small-item-categories > .fa-video').classList.add('selected-picto')
  } else if (event.currentTarget.dataset.categorie === "quote") {
    document.querySelector('.small-item-categories > .fa-quote-right').classList.add('selected-picto')
  } else if (event.currentTarget.dataset.categorie === "link") {
    document.querySelector('.small-item-categories > .fa-link').classList.add('selected-picto')
  } else if (event.currentTarget.dataset.categorie === "youtube") {
    document.querySelector('.small-item-categories > .fa-youtube').classList.add('selected-picto')
  } else if (event.currentTarget.dataset.categorie === "spotify") {
    document.querySelector('.small-item-categories > .fa-spotify').classList.add('selected-picto')
  } else if (event.currentTarget.dataset.categorie === "instagram") {
    document.querySelector('.small-item-categories > .fa-instagram').classList.add('selected-picto')
  }
}));

// document.querySelectorAll('.small-item-categories > i').forEach(picto => picto.addEventListener('click', (event) => {
//   document.querySelectorAll('.small-item-categories > i').forEach(p => p.classList.remove('selected-picto'))
//   event.currentTarget.classList.add('selected-picto')
// }));

// document.querySelectorAll('.picto-to-click').forEach(picto => picto.addEventListener('click', (event) => {
//   document.getElementById("special_categorie").setAttribute("value", event.currentTarget.dataset.categorie)
// }));

// document.querySelectorAll('.small-item-categories').forEach(picto => picto.addEventListener('click', (event) => {
//   document.getElementById("special_categorie").setAttribute("value", event.currentTarget.dataset.categorie)
// }));

// document.getElementById('fermer-modal-ajout').addEventListener('click', showSmallFooter);



document.getElementById('image').addEventListener('click', (event) => {
  console.log(event)
});
