var Avatar = React.createClass({
  render: function() {
    return (
      <div>
        <img className="avatar-url" src={this.props.data} />
      </div>
    );
  }
});