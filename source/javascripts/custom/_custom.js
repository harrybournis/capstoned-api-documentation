//= require ../lib/_jquery
//= require ../lib/_jquery_ui
(function (global) {
  $(function() {
    $('.content').imagesLoaded( function() {
      global.toc.calculateHeights("student"); // specify what to exclude
    });

    this.lecturerSelected = function() {
      var $body;
      $body = document.getElementsByTagName("BODY")[0];
      $body.classList.remove("student-mode");
      $body.classList.add("lecturer-mode");
      global.toc.calculateHeights("student"); // specify what to exclude
    };

    this.studentSelected = function() {
      var $body;
      $body = document.getElementsByTagName("BODY")[0];
      $body.classList.remove("lecturer-mode");
      $body.classList.add("student-mode");
      global.toc.calculateHeights("lecturer"); // specify what to exclude
    };
  });
})(window);
