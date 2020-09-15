# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
projects = [{
    title: 'Career search',
    started: 'Today',
    description: 'Build edit and show button by linking it to the tasks modal. These links will have to be to the nested routes',
}, {
    title: 'Technical Algorithms', 
    started: 'Today',
    description: 'Work on leetcode algos',
}, {
    title: 'Java Spring', 
    started: 'Today',
    description: 'Build a backend with the Spring MVC framework',
}, {
    title: 'Networking', 
    started: 'Today',
    description: 'Attend 2 events weekly',
}, {
    title: 'React-Redux',
    started: 'August',
    description: 'Apply Redux Thunk for async connection to backend',
}, {
    title: 'JavaScript-Rails', 
    started: 'May',
    description: 'Build a keyboard feature with bass sounds',
}, {
    title: 'Ruby on Rails', 
    started: 'March',
    description: 'Merge front-end to React or Angular',
}, {
    title: 'Sinatra', 
    started: 'January',
    description: 'Re-build with different backend and front-end',
}]

projects.each do |project|
    Project.create(project)
end

people = [{
    username: 'To be assigned:',
    password: 'none',
    image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/87/Light_Bulb_or_Idea_Flat_Icon_Vector.svg/946px-Light_Bulb_or_Idea_Flat_Icon_Vector.svg.png'
  },
  {
    username: 'Maya',
    password: '123',
    image: 'https://api.adorable.io/avatars/78' ,
  },
  {
    username: 'Stevie',
    password: '321',
    image: 'https://api.adorable.io/avatars/79',
  },
  {
    username: 'Christian',
    password: '111',
    image: 'https://api.adorable.io/avatars/80',
  }]

people.each do |person|
    Person.create(person)
end

tasks = [{ 
    description: "Apply Redux Thunk for async connection to backend",
    project_id: 1, 
    person_id: 1, 
    completed: true
},{ 
    description: "Add difficulty attribute, and other dashboard widgets", 
    project_id: 1, 
    person_id: 2, 
    completed: false
},{ 
    description: "I dont belong in project 1",
    project_id: 2, 
    person_id: 3, 
    completed: false
}]

tasks.each do |task|
    Task.create(task)
end

