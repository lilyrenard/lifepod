export function scrollFunction() {
  const el = document.getElementById('discover');
  el.addEventListener("click", (event) => {
  window.scrollBy(0, 710);
});
}

scrollFunction();
