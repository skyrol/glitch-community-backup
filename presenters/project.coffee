ProjectTemplate = require "../templates/includes/project"

module.exports = (application, project, category) ->

  self = 
  
    category: category
    project: project
    
    template: ->
      ProjectTemplate self

    # isProjectRecentProject

    showProjectOverlayOrEdit: (project) ->
      # condition here based on isProjectRecentProject
      application.showProjectOverlay project

    hiddenUnlessProjectUsers: ->
      console.log "🤖", project
      'hidden' unless project.users
      
    hiddenIfProjectUsers: ->
      'hidden' if project.users
