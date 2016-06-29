$(document).ready(function() {

  $("#profile").on('submit', '.edit-user', function(event) {
    const $form = $('.edit-user');
    let url = $form.attr('action');
    let method = $form.attr('method');
    let data = $form.serialize();

    $.ajax({
      url: url,
      method: method,
      data: data,
      dataType: "json"
    })
    .success(function(response) {
      console.log(response);
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

