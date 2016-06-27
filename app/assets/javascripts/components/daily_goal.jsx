var DailyGoal = React.createClass({
  render: function() {
    console.log(this.props)
    return (
      <li><a href="#!" className="collection-item">{this.props.description}</a></li>
    );
  }
});
