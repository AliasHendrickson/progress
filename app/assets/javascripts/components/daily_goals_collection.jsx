var DailyGoalsCollection = React.createClass({
  getInitialState: function() {
    return {daily_goals: this.props.data };
  },
  render: function() {
    return (
      <div><h3 className="header">DailyGoals:</h3>
        <ul className="collection">
          <li className="collection-item">
            for (var i = 0; i < in @state.daily_goals) {
              React.createElement(DailyGoal, Object.assign({}, this.props.data[0]))
            }
          </li>
        </ul>
      </div>
    );
  }
});
