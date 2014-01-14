class Dashing.GithubStatus extends Dashing.Widget
  ready: ->
    @onData(this)

  onData: (data) ->
    widget = $(@node)
    widget.removeClass("good minor major").addClass(data.status)
    widget.find('#github-logo').removeClass("good minor major").addClass(data.status)
    widget.find('#message').removeClass("good minor major").addClass(data.status)