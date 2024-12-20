/******/ (() => { // webpackBootstrap
var __webpack_exports__ = {};
/*!******************************************************!*\
  !*** ./platform/themes/resido/assets/js/wishlist.js ***!
  \******************************************************/
(function ($) {
  'use strict';

  var showSuccess = function showSuccess(message) {
    window.showAlert('alert-success', message);
  };
  var __ = function __(key) {
    window.trans = window.trans || {};
    return window.trans[key] !== 'undefined' && window.trans[key] ? window.trans[key] : key;
  };
  window.showAlert = function (messageType, message) {
    if (messageType && message !== '') {
      var alertId = Math.floor(Math.random() * 1000);
      var html = "<div class=\"alert ".concat(messageType, " alert-dismissible\" id=\"").concat(alertId, "\">\n                            <span class=\"close far fa-times\" data-dismiss=\"alert\" aria-label=\"close\"></span>\n                            <i class=\"far fa-") + (messageType === 'alert-success' ? 'check' : 'times') + " message-icon\"></i>\n                            ".concat(message, "\n                        </div>");
      $('#alert-container').append(html).ready(function () {
        window.setTimeout(function () {
          $("#alert-container #".concat(alertId)).remove();
        }, 6000);
      });
    }
  };
  $(document).ready(function () {
    setWishListCount();
    $(document).on('click', '.add-to-wishlist', function (e) {
      e.preventDefault();
      var cookieName = window.currentLanguage + '_wishlist';
      var property_id = $(this).data('id');
      var wishCookies = decodeURIComponent(getCookie(cookieName));
      var arrWList = [];
      if (property_id != null && property_id != 0 && property_id != undefined) {
        // Case 1: Wishlist cookies are undefined
        if (wishCookies == undefined || wishCookies == null || wishCookies == '') {
          var item = {
            id: property_id
          };
          arrWList.push(item);
          $(".add-to-wishlist[data-id=".concat(property_id, "] i")).removeClass('far fa-heart').addClass('fas fa-heart');
          showSuccess(__('Added to wishlist successfully!'));
          setCookie(cookieName, JSON.stringify(arrWList), 60);
        } else {
          var _item = {
            id: property_id
          };
          arrWList = JSON.parse(wishCookies);
          var index = arrWList.map(function (e) {
            return e.id;
          }).indexOf(_item.id);
          if (index === -1) {
            arrWList.push(_item);
            clearCookies(cookieName);
            setCookie(cookieName, JSON.stringify(arrWList), 60);
            $(".add-to-wishlist[data-id=".concat(property_id, "] i")).removeClass('far fa-heart').addClass('fas fa-heart');
            showSuccess(__('Added to wishlist successfully!'));
          } else {
            arrWList.splice(index, 1);
            clearCookies(cookieName);
            setCookie(cookieName, JSON.stringify(arrWList), 60);
            $(".add-to-wishlist[data-id=".concat(property_id, "] i")).removeClass('fas fa-heart').addClass('far fa-heart');
            showSuccess(__('Removed from wishlist successfully!'));
          }
        }
      }
      var countWishlist = JSON.parse(getCookie(cookieName)).length;
      $('.wishlist-count').text(countWishlist);
      setWishListCount();
    });
    $(document).on('click', '.remove-from-wishlist', function (e) {
      e.preventDefault();
      var cookieName = window.currentLanguage + '_wishlist';
      var property_id = $(this).data('id');
      var wishCookies = decodeURIComponent(getCookie(cookieName));
      var arrWList = [];
      if (property_id != null && property_id != 0 && property_id != undefined) {
        var item = {
          id: property_id
        };
        arrWList = JSON.parse(wishCookies);
        var index = arrWList.map(function (e) {
          return e.id;
        }).indexOf(item.id);
        if (index != -1) {
          arrWList.splice(index, 1);
          clearCookies(cookieName);
          setCookie(cookieName, JSON.stringify(arrWList), 60);
          showSuccess(__('Removed from wishlist successfully!'));
          $(".wishlist-page .item[data-id=".concat(property_id, "]")).closest('div').remove();
        }
      }
      var countWishlist = JSON.parse(getCookie(cookieName)).length;
      $('.wishlist-count').text(countWishlist);
      setWishListCount();
    });
    function setWishListCount() {
      var cookieName = window.currentLanguage + '_wishlist';
      var wishListCookies = decodeURIComponent(getCookie(cookieName));
      if (wishListCookies != null && wishListCookies != undefined && !!wishListCookies) {
        var arrList = JSON.parse(wishListCookies);
        var countWishlist = arrList.length;
        $('.wishlist-count').text(countWishlist);
        if (countWishlist > 0) {
          $('.add-to-wishlist').removeClass('far fa-heart');
          $.each(arrList, function (key, value) {
            if (value != null) {
              $(document).find(".add-to-wishlist[data-id=".concat(value.id, "] i")).addClass('fas fa-heart');
            }
          });
        }
      }
    }
    function setCookie(cname, cvalue, exdays) {
      var d = new Date();
      var url = new URL(window.siteUrl);
      d.setTime(d.getTime() + exdays * 24 * 60 * 60 * 1000);
      var expires = 'expires=' + d.toUTCString();
      document.cookie = cname + '=' + cvalue + '; ' + expires + '; path=/' + '; domain=' + url.hostname;
    }
    function getCookie(cname) {
      var name = cname + '=';
      var ca = document.cookie.split(';');
      for (var i = 0; i < ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) == ' ') {
          c = c.substring(1);
        }
        if (c.indexOf(name) == 0) {
          return c.substring(name.length, c.length);
        }
      }
      return '';
    }
    function clearCookies(name) {
      var url = new URL(window.siteUrl);
      document.cookie = name + '=; expires=Thu, 01 Jan 1970 00:00:01 GMT; path=/' + '; domain=' + url.hostname;
    }
    function checkWishlistInElement($el) {
      var parseCookie = JSON.parse(getCookie(window.currentLanguage + '_wishlist'));
      if (parseCookie && parseCookie.length) {
        $el.find('.add-to-wishlist').map(function () {
          var wlId = $(this).data('id');
          var exists = parseCookie.some(function (x) {
            return x.id === wlId;
          });
          if (exists) {
            $(this).find('i').addClass('fas');
          }
        });
      }
    }
    window.wishlishInElement = checkWishlistInElement;
  });
})(jQuery);
/******/ })()
;