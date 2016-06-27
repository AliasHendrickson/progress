var PhaseGoalsCollection = React.createClass({
  getInitialState: function() {
    return {phase_goals: this.props.data };
  },
  render: function() {
    return (
      <div className="collection">
        PhaseGoals:
      </div>
    );
  }
});
