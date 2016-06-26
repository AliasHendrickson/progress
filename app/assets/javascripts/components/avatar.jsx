var Avatar = React.createClass({
  render: function() {
    return (
      <div className="col s3">
        <img className="avatar-url" src={this.props.data} />
      </div>
    );
  }
});
