$(document).ready(function() {

  $(".container").on('submit', '.edit_user', function(event) {
    event.preventDefault();
    console.log("User form");
    const $form = $('.form'),
          url = $form.attr('action'),
          method = $form.attr('method'),
          data = $form.serialize();

    console.log(url);
    console.log(method);
    console.log(data);

    $.ajax({
      url: url,
      method: method,
      data: data,
      dataType: "json"
    })
    .success(function(response) {
      console.log('Success!');
      $form.closest('.modal').style.display = "none";
      // handleResponse($form, response);
    })
    .fail(function(error) {
      console.log(error);
    })
  });
});
