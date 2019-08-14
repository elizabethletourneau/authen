# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


liz = User.create(username: 'eleto', first_name: 'Liz', last_name: 'Letourneau', email: 'liz@email.com', password: 'root', password_confirmation: 'root', role: 'admin')
elizabeth = User.create(username: 'elizabeth', first_name: 'Elizabeth', last_name: 'Letourneau', email: 'elizabeth.letourneau@shopify.com', password: 'root', password_confirmation: 'root', role: 'admin')
root = User.create(username: 'root', first_name: 'root', last_name: 'root', email: 'liz@root.com', password: 'root', password_confirmation: 'root', role: 'admin')
julian = User.create(username: 'fred', first_name: 'Julian', last_name: 'Jones', email: 'julian@email.com', password: 'Julian1', password_confirmation: 'Julian1')
freida = User.create(username: 'george', first_name: 'Freida', last_name: 'Gray', email: 'freida@email.com', password: 'Freida1', password_confirmation: 'Freida1', role: 'admin')
