var WeeklyGoalsCollection = React.createClass({
  getInitialState: function() {
    return {weekly_goals: this.props.data };
  },
  render: function() {
    return (
      <div className="collection">
        WeeklyGoals:
      </div>
    );
  }
});
