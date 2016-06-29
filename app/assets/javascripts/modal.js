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

  // When the user clicks anywhere outside of the modal, close it
  // window.on("click", function(event) {
  //   if (event.target == $modal) {
  //       $modal.style.display = "none";
  //   }
  // });
});
