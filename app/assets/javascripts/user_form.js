$(document).ready(function() {

  $("#profile").on('submit', '.edit-user', function(event) {
    const $form = $('.form'),
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
      // close open modal
      handleResponse($form, response);
    })
    .fail(function(error) {
      console.log(error);
    })
  });

  $("#profile").on("click", ".edit-profile", function() {
    const $modal = $('#userEditModal')[0];
    console.log($modal);
    $modal.style.display = "block";

    $('#closeEditModal').on("click", function() {
      $modal.style.display = "none";
    });
  });
});

function handleResponse($form, response) {
  // switch to appropriate tab
  // confirm changes
  switch($form.attr('id')) {
    case 'rating-form':
      handleRatingResponse($form, response);
      break;
    case 'user-form':
      handleUserResponse($form, response);
      break;
    case 'goal-form':
      handleGoalResponse($form, response);
      break;
    case 'user-session-form':
      handleUserSessionResponse($form, response);
      break;
    case 'group-from':
      handleGroupResponse($form, response);
      break;
  }
}

function handleRatingForm(form, response) {
  // update goal show partial
  // update progress bar
}

function handleUserResponse(form, response) {
  // update profile view
  // update progress view
}

function handle
