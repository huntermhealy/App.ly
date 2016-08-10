// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
$(function() {
  //Gold highlight on page title when mouse enter
  $("#title").mouseenter(function() {
    $(this).children().each(function(i, el) {
      setTimeout(function() {
        $(el).addClass("highlight");
      }, 40 + 40 * i);
      setTimeout(function() {
        $(el).removeClass("highlight");
      }, 120 + 40 * i);

    });
  });

  //Gold highlight on links on mouseenter
  $(".link").mouseover(function() {
    $(this).children().each(function(i, el) {
      setTimeout(function() {
        $(el).addClass("highlight2");
      }, 30 + 30 * i);
    });
  });

  //Remove highlight when mouse leaves
  $(".link").mouseout(function() {
    $(this).children().each(function(i, el) {
      setTimeout(function() {
        $(el).removeClass("highlight2");
      }, 30 + 30 * i);
    });
  });
});