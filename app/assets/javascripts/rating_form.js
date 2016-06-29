$(document).ready(function() {

  $("#progress").on('submit', '.new_rating', function(event) {
    event.preventDefault();
    console.log("Rating form");
    const $form = $('.new_rating'),
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
      console.log($('#goal-show-modal-daily'));
      $('#goal-show-modal-daily')[0].style.display = "none";
      // update score
      $score = $form.closest('.collection-item').find('.goal-score').get(0);
      console.log($score);
      console.log(response);
      // update goal partial
      // update progress bar
    })
      .fail(function(error) {
      console.log(error);
    })
  });
});
