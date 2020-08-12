class PeopleController < ApplicationController

    def index
        people =  Person.all
        render json: PersonSerializer.new(people)
    end
end
