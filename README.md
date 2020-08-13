# README

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

CLI commands to deploy to heroku:

```
heroku create
git push heroku master
heroku run db:migrate
heroku run rake db:seed
heroku ps:scale web=1
heroku ps
heroku open
```
