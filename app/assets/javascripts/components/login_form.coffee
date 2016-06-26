# @LoginForm = React.createClass
#   getInitialState: ->
#     email: ''
#     password: ''

#   valid: ->
#     @state.username && @state.password

#   handleChange: (e) ->
#     name = e.target.name
#     @setState "#{ name }": e.target.value

#   handleSubmit: (e) ->
#     e.preventDefault()
#     $.post '', { user: @state }, (data) =>
#       @props.handleNewRecord data
#       @setState @getInitialState()
#     , 'JSON'

#   render: ->
#     React.DOM.form
#       className: 'form-inline'
#       onSubmit: @handleSubmit
#       React.DOM.div
#         className: 'form-group'
#         React.DOM.input
#           type: 'email'
#           className: 'form-control'
#           placeholder: 'email'
#           name: 'email'
#           value: @state.email
#           onChange: @handleChange
#       React.DOM.div
#         className: 'form-group'
#         React.DOM.input
#           type: 'password'
#           className: 'form-control'
#           placeholder: 'password'
#           name: 'password'
#           value: @state.password
#           onChange: @handleChange
#       React.DOM.button
#         type: 'submit'
#         className: 'btn btn-primary'
#         disabled: !@valid()
#         'Login'
