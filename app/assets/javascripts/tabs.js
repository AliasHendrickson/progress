$(document).ready(function () {
  $('.current-score').each(function() {
    score = $(this).text();
    $(this).html(addStars(score));
  });

  $('.complete-checkbox').each(function() {
    state = $(this).text();
    console.log($(this));
    console.log(state);
    $(this).html(addCompleteCheck(state));
  });

  $('.completed_btn').on('click', function() {
    $(this).closest('.collection-item').find('.complete-checkbox').html(addCompleteCheck(true));
  })
})

function addStars(score) {
  stars = "";
  for(var i = 0; i < score; i++) {
    stars += "<i class='material-icons md-18 star'>grade</i>";
  }
  return stars;
}

function addCompleteCheck(state) {
  if(state == "true") {
    return "<i class='material-icons md-18'>turned_in</i>";
  } else {
    return "<i class='material-icons md-18'>turned_in_not</i>";
  }
}
