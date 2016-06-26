var Completions = React.createClass({
  render: function() {
  return (
    <div className="goals-container">
      <div className="collection with-header">
        <ul className="collection-header"><h3>Recently Completed</h3>
         { this.props.data.map(function(goalObject) {
             return <li className="collection-item">{goalObject.description}</li>;
            })
          }
        </ul>
      </div>
    </div>
   );
  }
});


