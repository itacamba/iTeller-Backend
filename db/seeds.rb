# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Account.destroy_all
Transaction.destroy_all

#User

u1 = User.create(name: 'Sandra Levy', email: "sl@demo.com", password: "demo")
u2 = User.create(name: "Bob Larson", email: "bob.lars@demo.com", password: "demo")
u3 = User.create(name: "Veronica Ramos", email: "v.ramos@demo.com", password: "demo")




#Account

a1 = Account.create(name: 'My account', account_type: 'Checking', balance: 2000, user_id: u1.id)
a2 = Account.create(name: 'My Savings', account_type: 'Saving', balance: 1000, user_id: u1.id)
a3 = Account.create(name: 'My Kids Account', account_type: 'Savings', balance: 3000, user_id: u2.id)



#Transaction 

t1 = Transaction.create(account_id: a1.id, name: 'groceries', amount: 100, category: "Food", date: DateTime.new(2020,11,18), vendor: "MOM's Organic", note: "Purchase made every 2 weeks")
t2 = Transaction.create(account_id: a1.id, name: 'Movie Tickets', amount: 56, category: "Entertainment", date: DateTime.new(2018,12,1), vendor: "AMC",  note: "")
t3 = Transaction.create(account_id: a3.id, name: 'Electric Bill', amount: 180, category: "Utilities", date: DateTime.new(2020,11,18), vendor: "Dominion Energy", note: "Purchase made every month")



