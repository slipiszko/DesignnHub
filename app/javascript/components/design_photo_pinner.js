alert('design photo pinner');

const designPhotoPinnerComponents = document.querySelectorAll('.js-design-photo-pinner');

designPhotoPinnerComponents.forEach((photoPinnerComponent) => {
  photoPinnerComponent.addEventListener('click', (e) => {
    const photoWidth = photoPinnerComponent.offsetWidth;
    const photoHeight = photoPinnerComponent.offsetHeight;
    const x = e.offsetX / photoWidth;
    const y = e.offsetY / photoHeight;
    const pinEl = photoPinnerComponent.querySelector('.js-design-photo-pin');
    pinEl.style.top = `${(y * 100)}%`;
    pinEl.style.left = `${(x * 100)}%`;

    console.log(x, 'x');
    console.log(y, 'y');
  });
});
