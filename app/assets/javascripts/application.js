//= require rails-ujs
//= require jquery
//= require turbolinks
//= require_tree .

$(function (){
  $('.show_comments').on('click', function () {
    if ($(this).hasClass('active')){
      $(this).removeClass('active').text('Show comments');
      $('.comments_wrap').addClass('active').slideUp();
    } else{
      $(this).addClass('active').text('Hide comments');
      $('.comments_wrap').addClass('active').slideDown();
    };

  })
});
