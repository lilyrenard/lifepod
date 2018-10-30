import Typed from 'typed.js';



export function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Select the best moments of your life.", "Discover old memories."],
    typeSpeed: 70,
    loop: true
  });
}

loadDynamicBannerText();
