const formInstance = (
  <form>
    <input type="text" name="description" placeholder="description"/>
  </form>
)

$(document).ready(function() {
  ReactDOM.render(formInstance, document.getElementById('form'))
})
