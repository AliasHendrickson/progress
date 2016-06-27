var DailyGoalsCollection = React.createClass({
  getInitialState: function() {
    return {daily_goals: this.props.data };
  },
  render: function() {
    return (
      <div className="collection">
        DailyGoals
      </div>
    );
  }
});
