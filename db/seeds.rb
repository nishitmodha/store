# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


r1 = Role.create({ name: 'Regular', description: 'Can read items' })
r2 = Role.create({ name: 'Seller', description: 'Can read and create items. Can update and destroy own items' })
r3 = Role.create({ name: 'Admin', description: 'Can perform any CRUD operation on any resource' })

u1 = User.create({ name: 'Nishit', email: 'nrm@g.com', password: 'nishit', password_confirmation: 'nishit', role_id: r3.id })
u2 = User.create({ name: 'Satish', email: 'srm@g.com', password: 'password', password_confirmation: 'password', role_id: r2.id })
u3 = User.create({ name: 'Deval', email: 'drm@g.com', password: 'password', password_confirmation: 'password', role_id: r2.id })
u4 = User.create({ name: 'Gin', email: 'Gin@g.com', password: 'password', password_confirmation: 'password', role_id: r1.id })

i1 = Item.create({ name: 'Rayban Sunglasses', description: 'Stylish shades', price: 99.99, user_id: u2.id })
i2 = Item.create({ name: 'Gucci watch', description: 'Expensive timepiece', price: 199.99, user_id: u2.id })
i3 = Item.create({ name: 'Henri Lloyd Pullover', description: 'Classy knitwear', price: 299.99, user_id: u3.id })
i4 = Item.create({ name: 'Porsche socks', description: 'Cosy footwear', price: 399.99, user_id: u3.id })
