class ProjectsController < ApplicationController

    def index
        projects = Project.all
        options = {
            is_collection: true,
          }
        render json: ProjectSerializer.new(projects).serialized_json
    end

end
