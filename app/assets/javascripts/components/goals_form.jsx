var YourForm = React.createClass({
  render: function() {
    var csrfToken = $('meta[name=csrf-token]').attr('content');
    return (
      <form action='/users' method='post' accept-charset='UTF-8'>
        <input type='hidden' name='_method' value='patch' />
        <input type='hidden' name='utf8' value='✓' />
        <input type='hidden' name='authenticity_token' value={csrfToken} />
        ...
      </form>
    );
  }
});
