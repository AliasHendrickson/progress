var Experience = React.createClass({
  render: function() {
  console.log(this.props.data)
    return (
      <div className="experience">
        <h2 className="title">Experience: { this.props.data }</h2>
      </div>
    );
  }
});
