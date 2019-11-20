var questionTags = document.querySelectorAll('.question-tag-container');
var updateBtn = document.querySelector('#update-comment');
var portfolioBtn = document.querySelector('#upload-portfolio');
var questionBtn = document.querySelector('#ask-question');
var followBtn = document.querySelector(".follow-button");
var Turbolinks = require("turbolinks")

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

Turbolinks.start()

$(function(){
    $('.carousel').carousel();
});

Array.prototype.forEach.call(questionTags, function addClickListener(card) {
  card.addEventListener('click', function() {
  });
});

updateBtn.addEventListener("click", function() {
});

questionBtn.addEventListener("click", function() {
});

portfolioBtn.addEventListener("click", function() {
});

followBtn.addEventListener("click", function() {
});
