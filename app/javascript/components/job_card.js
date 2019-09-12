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

