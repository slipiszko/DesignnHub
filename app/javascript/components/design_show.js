const pins         = document.querySelectorAll(".design-photo-pin");
const toggleButton = document.querySelector("#toggle-pins-button");
const photoPinner = document.querySelector('.js-design-photo-pinner');

window.showCoords = function(event) {
  const x      = event.clientX;
  const y      = event.clientY;
  const coords = [x,y];
  document.querySelector("#demo").innerHTML = coords;
};

window.showAllPins = function() {
  photoPinner.classList.toggle('hide-pins', false);
  // pins.forEach((pin) => {
  //   pin.classList.add("visible")
  // });
  toggleButton.innerHTML = "<i class=\"fas fa-eye\"></i>";
}

window.hideAllPins = function() {
  photoPinner.classList.toggle('hide-pins', true);

  pins.forEach((pin) => {
    pin.classList.remove("visible")
  });

  toggleButton.innerHTML = "<i class=\"fas fa-eye-slash\"></i>";
}

window.togglePins = function() {
  const arePinsHidden = photoPinner.classList.contains('hide-pins');

  if (arePinsHidden) {
    showAllPins()
  } else {
    hideAllPins()
  }
}

window.showPin = function(comment_id) {
  const clickedPin = document.querySelector('[data-comment-id="' + comment_id + '"]');

  hideAllPins();
  clickedPin.classList.add("visible");
}
