$(document).ready( function() {
  var modal = document.getElementById('openModal1');

  // Get the button that opens the modal
  var link = $(".myLink");

  console.log(link)

  // Get the <span> element that closes the modal
  var span = document.getElementsByClassName("close")[0];

  // When the user clicks on the button, open the modal
  $(".myLink").on("click", function() {
      modal.style.display = "block";
  });

  // When the user clicks on <span> (x), close the modal
  span.onclick = function() {
      modal.style.display = "none";
  }

  // When the user clicks anywhere outside of the modal, close it
  window.onclick = function(event) {
      if (event.target == modal) {
          modal.style.display = "none";
      }
  }
})
