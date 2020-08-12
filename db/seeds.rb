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
    description: 'Build with project requirements',
}, {
    title: 'Java Spring', 
    started: 'Today',
    description: 'Build with project requirements',
}, {
    title: 'Networking', 
    started: 'Today',
    description: 'Build with project requirements',
}, {
    title: 'React-Redux',
    started: 'August',
    description: 'Apply Redux Thunk for async connection to backend',
}, {
    title: 'JavaScript-Rails', 
    started: 'May',
    description: 'Build with project requirements',
}, {
    title: 'Ruby on Rails', 
    started: 'March',
    description: 'Build with project requirements',
}, {
    title: 'Sinatra', 
    started: 'January',
    description: 'Build with project requirements',
}]

projects.each do |project|
    Project.create(project)
end
