ProjectUsersTemplate = require "../templates/includes/project-users"

# maybe projects
module.exports = (application, project) ->

  self =

    users: ->
      console.log 'projf', project.users
      project.users
  
    template: ->
      ProjectUsersTemplate self

