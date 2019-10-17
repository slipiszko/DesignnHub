var questionTags = document.querySelectorAll(".question-tag-container");
var updateButton = document.querySelector('#update-comment');

import "bootstrap";
import {markImgWhenClick} from '../components/design_show';
import { initSelect2 } from '../plugins/init_select2';
import "../plugins/flatpickr"

import '../components/job_sidebar';
import '../components/job_card';
// import '../components/job_post_card';
import '../components/design_photo_pinner';
import '../components/design_show';

initSelect2();

$(function(){
    $('.carousel').carousel();
});

Array.prototype.forEach.call(questionTags, function addClickListener(card) {
  card.addEventListener('click', function() {
  });
});

updateButton.addEventListener("click", function() {
});


