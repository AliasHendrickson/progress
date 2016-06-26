var Completions = React.createClass({
  render: function() {
    return (
      <div className="collection with-header">
        <ul className="collection-header"><h4>Recently Completed: </h4>
         { this.props.data.map(function(goalObject) {
             return <a href="#!" className="collection-item">{goalObject.description}</a>;
            })
          }
        </ul>
      </div>
    );
  }
});


