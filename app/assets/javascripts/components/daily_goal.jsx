var DailyGoal = React.createClass({
  render: function() {
    return (
      <a href="#!" className="collection-item">{this.props.data.description}</a>
    );
  }
});
