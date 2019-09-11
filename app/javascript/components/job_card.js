import Masonry from "masonry-layout";
import AOS from 'aos';
import 'aos/dist/aos.css'; // You can also use <link> for styles

const elem = document.querySelector('.masonry');
if (elem) {
  const msnry = new Masonry( elem, {
    // options
    itemSelector: '.masonry-item',
    gutter: 20,
  });

  AOS.init();
}

const applyButtonEl = document.querySelector('.js-post-apply-btn');
const postInitialContentEl = document.querySelector('.js-post-initial-content');
const postApplyContentEl = document.querySelector('.js-post-apply-content');
applyButtonEl.addEventListener('click', (e) => {
  postInitialContentEl.classList.add('d-none');
  postApplyContentEl.classList.remove('d-none');
  e.preventDefault();
});
