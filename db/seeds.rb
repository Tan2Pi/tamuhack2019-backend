# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
u1 = User.create({name: 'Chase McDermott', manager: false})
u2 = User.create({name: 'Phong Tran', manager: false})
u3 = User.create({name: 'Piyush Tandon', manager:true})

t1 = Task.create({name: 'Clean chairs', category: 'cleaning'})
t2 = Task.create({name: 'Restock cookies', category: 'supply'})

user_task_1 = UserTask.create({user: u1, task: t1})
user_task_2 = UserTask.create({user: u2, task: t1})
