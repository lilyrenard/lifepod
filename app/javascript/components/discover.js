function scrollFunction() {
  const el = document.getElementById('discover');
  el.addEventListener("click", (event) => {
  window.scrollBy(0, 740);
});
}

export { scrollFunction };
