import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["King of Cocktails since 2048"],
    typeSpeed: 50,
    loop: true
  });
};

export { loadDynamicBannerText };
