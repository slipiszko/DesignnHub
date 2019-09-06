const accordion = document.querySelector('.accordion');
const items     = accordion.querySelectorAll('li');
const headers    = accordion.querySelectorAll('.sidebar-header');

function toggleAccordion() {
  const thisItem = this.parentNode;
  items.forEach(item => {
    if (thisItem == item) {
      thisItem.classList.toggle('open');
      return;
    }
    item.classList.remove('open');
  });
}
headers.forEach(header => header.addEventListener('click', toggleAccordion));
