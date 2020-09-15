class PeopleController < ApplicationController

    def index
        people =  Person.all
        render json: PersonSerializer.new(people)
    end

    def create
        image = "https://api.adorable.io/avatars/#{rand(100)}"
        new_user = Person.create(username: params[:user][:username], password: params[:user][:password], image: image)
        if new_user
            render json: PersonSerializer.new(new_user).serialized_json
        end
    end

    def destroy
        person = Person.find(people_params[:id])
        person.delete
        person.tasks.each do |task|
            task.person_id = 1
        end
        render json: PersonSerializer.new(people)
    end

    private

    def people_params
        params.require(:project).permit(:username, :password, :image)
    end
end
