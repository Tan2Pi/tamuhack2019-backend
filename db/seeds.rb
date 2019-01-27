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
u4 = User.create({name: 'Zunayed Siddiqui', manager:false})

t1 = Task.create({name: 'Clean chairs', category: 'cleaning'})
t2 = Task.create({name: 'Restock cookies', category: 'supply'})
t3 = Task.create({name: 'Clean bathroom', category: 'cleaning'})
t4 = Task.create({name: 'Remove bags', category: 'utility'})
t5 = Task.create({name: 'Vacuum Floor', category: 'cleaning'})
t6 = Task.create({name: 'Resupply magazines', category: 'supply'})

user_task_1 = UserTask.create({user: u1, task: t1})
user_task_2 = UserTask.create({user: u1, task: t2})
user_task_3 = UserTask.create({user: u1, task: t3})
user_task_4 = UserTask.create({user: u2, task: t3})
user_task_5 = UserTask.create({user: u2, task: t4})
user_task_6 = UserTask.create({user: u2, task: t5})
user_task_7 = UserTask.create({user: u2, task: t6})
user_task_8 = UserTask.create({user: u3, task: t1})
user_task_9 = UserTask.create({user: u4, task: t1})



