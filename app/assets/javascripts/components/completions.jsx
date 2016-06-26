var Completions = React.createClass({
  render: function() {
    return (
      <div>
        <h2 className="completed-goal">Recently Completed: {this.props.data[0].description} </h2>
      </div>
    );
  }
});
