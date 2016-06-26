var Avatar = React.createClass({
  render: function() {
    return (
      <div>
        <img className="avatar-url" src={this.props.avatar_url} />
      </div>
    );
  }
});
