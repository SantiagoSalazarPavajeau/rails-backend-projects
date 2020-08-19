# A Rails API 

## Project Management App 

This API connects to the React front-end project: 

https://github.com/SantiagoSalazarPavajeau/react-projects 



## Rails Generators Guide

CLI commands to get the API app running:

```
rails new rails-backend-projects --api --database=postgresql
rails g resource Project title started description:text
rails g resource Person key value text image
rails g resource Task description:text person:belongs_to project:belongs_to completed:boolean
rails db:create 
rails db:migrate 
rails db:seed

rails g serializer Project title started description id created_at updated_at
rails g serializer Person key value text image id created_at updated_at
rails g serializer Task description id person_id project_id completed
```

The command to create a new rails project included an ```--api``` and a ```--database=postgresql``` command that personalized the build for this application to not include rails views (.erb) and to use postgres (heroku deployment). 

The resource generators build a model, a controller, a database migration with the specified attributes, and router routes for each of the resources, but the controller actions have to be customized manually with this method. 

Last, the serializer generator creates a file that contains the attributes specified to be sent on the JSON data sent to the front end as a response in redux thunk.

The seed file contains preloaded data with relationships (https://github.com/SantiagoSalazarPavajeau/rails-backend-projects/blob/master/db/seeds.rb).


CLI commands to deploy to heroku after creating a new project with postgres as a database.

```
heroku create
git push heroku master
heroku run rake db:migrate
heroku run rake db:seed
heroku ps:scale web=1
heroku ps
heroku open
```

Feel free to get in contact to share any questions and ideas.

Twitter: @santispavajeau

LinkedIn: https://www.linkedin.com/in/santiago-salazar-pavajeau/
