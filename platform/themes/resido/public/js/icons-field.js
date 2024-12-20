/******/ (() => { // webpackBootstrap
var __webpack_exports__ = {};
/*!*********************************************************!*\
  !*** ./platform/themes/resido/assets/js/icons-field.js ***!
  \*********************************************************/
$(document).ready(function () {
  'use strict';

  var icons = ['ti-flickr', 'ti-flickr-alt', 'ti-instagram', 'ti-google', 'ti-github', 'ti-facebook', 'ti-dropbox', 'ti-dropbox-alt', 'ti-dribbble', 'ti-apple', 'ti-android', 'ti-yahoo', 'ti-trello', 'ti-stack-overflow', 'ti-soundcloud', 'ti-sharethis', 'ti-sharethis-alt', 'ti-reddit', 'ti-microsoft', 'ti-microsoft-alt', 'ti-linux', 'ti-jsfiddle', 'ti-joomla', 'ti-html5', 'ti-css3', 'ti-drupal', 'ti-wordpress', 'ti-tumblr', 'ti-tumblr-alt', 'ti-skype', 'ti-youtube', 'ti-vimeo', 'ti-vimeo-alt', 'ti-twitter', 'ti-twitter-alt', 'ti-linkedin', 'ti-pinterest', 'ti-pinterest-alt', 'ti-themify-logo', 'ti-themify-favicon', 'ti-themify-favicon-alt'];
  var initIconsField = function initIconsField() {
    $('.icon-select').each(function (index, el) {
      var value = $(el).children('option:selected').val();
      var options = '';
      if (!value) {
        options = '<option value="">&nbsp;</option>';
      }
      icons.forEach(function (value) {
        options += '<option value="' + value + '">' + value + '</option>';
      });
      $(el).html(options);
      $(el).val(value);
      $(el).select2({
        templateResult: function templateResult(state) {
          if (!state.id) {
            return state.text;
          }
          return $('<span><i class="elegant-icon ' + state.id + '"></i></span>&nbsp; ' + state.text + '</span>');
        },
        width: '100%',
        templateSelection: function templateSelection(state) {
          if (!state.id) {
            return state.text;
          }
          return $('<span><i class="elegant-icon ' + state.id + '"></i></span>&nbsp; ' + state.text + '</span>');
        }
      });
    });
  };
  initIconsField();
  document.addEventListener('core-init-resources', function (e) {
    initIconsField();
  });
});
/******/ })()
;