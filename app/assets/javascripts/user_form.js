$(document).ready(function() {
  $( '.edit_user').on('submit', function(event) {
    event.preventDefault();

    const $form = $(this),
          url = $form.attr('action'),
          method = $form.attr('method'),
          data = $form.serialize();

    $.ajax({
      url: url,
      method: method,
      data: data,
      dataType: "json"
    })
    .success(function(response) {
      console.log('Success!');
      $form.closest('.modal')[0].style.display = "none";
      $('#profile-avatar').each(function(image) {
        image.attr('src', response.avatar_url);
      });
      $('#profile-email').text(response.email);
      $('#profile-username').text(response.username);
    })
    .fail(function(error) {
      console.log(error);
    })
  });
});
