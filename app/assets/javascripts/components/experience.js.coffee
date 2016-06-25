{ div, h2 } = React.DOM

@Experience = React.createClass
  getInitialState: ->
    experience: @props.data
  getDefaultProps: ->
    experience: ""
  render: ->
    div {className: 'experience'}
    h2 {className: 'title'}, 'Experience'
