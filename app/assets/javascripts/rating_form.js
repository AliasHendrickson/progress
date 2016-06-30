$(document).ready(function() {
  $('.current-score').each(function() {
    console.log($(this).text());
    score = $(this).text();
    $(this).html(addStars(score));
  });

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
      $form.closest('.modal')[0].style.display = "none";
      // update score
      $form.closest('.collection-item').find('.current-score').html(addStars(response[0].score));
      // update goal partial
      $form.closest('.collection-item').find('.rating-partials-container')
        .prepend('<div class="rating-partial"><p class="confidence_score">Score: ' + response[0].score +
          '</p><p class="rating_comment">Comment: ' + response[0].comment + '</p></div>');
      // update progress bar
      $('.current-level').text(response[1]);
      $('.progress-bar').css("width", response[2] + "%");
    })
      .fail(function(error) {
      console.log(error);
    })
  });
});

function addStars(score) {
  stars = "";
  for(let i = 0; i < score; i++) {
    stars += "<i class='material-icons md-18 star'>grade</i>";
  }
  return stars;
}
