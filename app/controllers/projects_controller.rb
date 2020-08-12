class ProjectsController < ApplicationController

    def index
        projects = Project.all
        options = {
            is_collection: true,
          }
        render json: ProjectSerializer.new(projects)
    end

    def create
        project = Project.create(project_params)
        render json: ProjectSerializer.new(project).serialized_json
    end

    def destroy
        project = Project.find(params[:id])
        project.delete
        projects = Project.all
        render json: ProjectSerializer.new(projects)
    end

    private

    def project_params
        params.require(:project).permit(:title, :description)
    end
end
