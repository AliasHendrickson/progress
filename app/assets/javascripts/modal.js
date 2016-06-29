$(document).ready(function() {
  // Get the <span> element that closes the modal
  // When the user clicks on the button, open the modal
  $(".open-modal-link").on("click", function() {
    $modal = $(this).closest(".collection-item").find('.modal').get(0);
    $modal.style.display = "block";

    $('.close-modal-btn').on("click", function() {
      $modal.style.display = "none";
    });
  });

  $(".edit-profile").on("click", function() {
    $modal = $('#user-edit-modal')[0];
    $modal.style.display = "block";

    $('.close-modal-btn').on("click", function() {
      $modal.style.display = "none";
    });
  });
});
