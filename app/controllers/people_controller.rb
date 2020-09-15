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
        person = Person.find(params[:id])
        person.tasks.each do |task|
            task.update(person_id: 1)
        end
        person.delete
        people = Person.all
        render json: PersonSerializer.new(people)
    end

    private

    def people_params
        params.require(:person).permit(:username, :password, :image)
    end
end
