
const designPhotoPinnerComponents = document.querySelectorAll('.js-design-photo-pinner');
// const baseUrl = `http://localhost:3000/designs/${:id}/edit`;
const comment = document.querySelector("#js-your-message");
const form = document.querySelector("#js-comment-form");
const inputX = document.querySelector(".js-comment-x")
const inputY = document.querySelector(".js-comment-y")
designPhotoPinnerComponents.forEach((photoPinnerComponent) => {
  photoPinnerComponent.addEventListener('click', (e) => {
    const photoWidth = photoPinnerComponent.offsetWidth;
    const photoHeight = photoPinnerComponent.offsetHeight;
    const x = e.offsetX / photoWidth;
    const y = e.offsetY / photoHeight;
    const pinEl =photoPinnerComponent.querySelector('.js-design-photo-pin');
    pinEl.style.top = `${(y * 100)}%`;
    pinEl.style.left = `${(x * 100)}%`;
    inputX.value = x;
    inputY.value = y;
  });
  photoPinnerComponent.addEventListener('submit', (event) => {
  event.preventDefault();
  const message = comment.value;
  const myname = name.value;
  list.insertAdjacentHTML("beforeend", `<li>"${message}" by "${myname}" </li>`);
  const apiMessage = { author: myname, content: message };
  fetch(baseUrl, {
    method: 'POST',
    body: JSON.stringify(apiMessage)
  })
    .then(response => response.json())
    .then((data) => {
      console.log(data);
    });
  });
});
