$(document).ready(function() {
  var modal;
  // Get the button that opens the modal
  const link = $(".myLink");

  // Get the <span> element that closes the modal
  // When the user clicks on the button, open the modal
  $(".myLink").on("click", function() {
    $modal = $(this).closest(".collection-item").find('#openModal').get(0);
    $modal.style.display = "block";

    const span = $modal.find('.close').get(0);
    span.onclick = function() {
      modal.style.display = "none";
    };
  });

  // When the user clicks on <span> (x), close the modal
  // span.onclick = function() {
  //   modal = $(this).parent().parent().parent().find('#openModal').get(0)
  //   console.log($(this).parent().parent().parent().find('#openModal').get(0))
  //   // console.log(modal)
  //   modal.style.display = "none";
  // }

  // When the user clicks anywhere outside of the modal, close it
  window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
  }
});
