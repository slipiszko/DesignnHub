const designPhotoPinnerComponents = document.querySelectorAll('.js-design-photo-pinner');
// const baseUrl = `http://localhost:3000/designs/${:id}/edit`;
const commentEl = document.querySelector("#js-your-message");
// const form = document.querySelector("#js-comment-form");
const inputX  = document.querySelector(".js-comment-x");
const inputY  = document.querySelector(".js-comment-y");

const popupCommentFormEl = document.querySelector(".js-popup-comment-form");
const popupCommentFormInputEl = popupCommentFormEl.querySelector('textarea');

designPhotoPinnerComponents.forEach((photoPinnerComponent) => {
  photoPinnerComponent.addEventListener('click', (e) => {
    // Only ever move the user pin if the user is actually clicking on the image.
    if (e.target.nodeName !== 'IMG') {
      return;
    }

    const photoWidth  = photoPinnerComponent.offsetWidth;
    const photoHeight = photoPinnerComponent.offsetHeight;
    const x = (e.offsetX - 15) / photoWidth;
    const y = (e.offsetY - 15) / photoHeight;
    const pinEl = photoPinnerComponent.querySelector('.js-design-photo-pin');
    pinEl.style.top = `${(y * 100)}%`;
    pinEl.style.left = `${(x * 100)}%`;
    inputX.value = x;
    inputY.value = y;

    window.showAllPins();

    popupCommentFormEl.classList.remove('d-none');

    popupCommentFormInputEl.focus();
  });
});

popupCommentFormInputEl.addEventListener('keydown', (e) => {
  // 13 is the enter button.
  if (e.keyCode === 13) {
    e.preventDefault(); // Don't create a new line.
    popupCommentFormInputEl.form.submit(); // Submit the form.
  }
});


if (popupCommentFormEl) {
  popupCommentFormEl.addEventListener('click', (e) => {
    e.stopPropagation();
  });
}
