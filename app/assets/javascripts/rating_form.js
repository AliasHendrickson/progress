$(document).ready(function() {

  $("#progress").on('submit', '.new_rating', function(event) {
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
      $form.trigger('reset');
      $form.closest('.modal')[0].style.display = "none";
      // update score
      $form.closest('.collection-item').find('.current-score').text(response[0].score);
      // update goal partial
      $form.closest('.collection-item').find('.rating-partials-container')
        .prepend('<div class="rating-partial"><p class="confidence_score">Score: ' + response[0].score +
          '</p><p class="rating_comment">Comment: ' + response[0].comment + '</p></div>');
      // update progress bar
      $('.current-level').text(response[1]);
      $('.progress-bar').css("width:" + response[2] + "%");
    })
      .fail(function(error) {
      console.log(error);
    })
  });
});
