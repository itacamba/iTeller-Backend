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

u1 = User.create(name: 'Sandra Levy', email: "sl@demo.com", password: "demo", password_confirmation: "demo")
u2 = User.create(name: "Bob Larson", email: "bob.lars@demo.com", password: "demo", password_confirmation: "demo")
u3 = User.create(name: "Veronica Ramos", email: "v.ramos@demo.com", password: "demo", password_confirmation: "demo")




#Account

a1 = Account.create(name: 'My account', account_type: 'checking', balance: 2000, user_id: u1.id)
a2 = Account.create(name: 'My Savings', account_type: 'savings', balance: 1000, user_id: u1.id)
a3 = Account.create(name: 'My Kids Account', account_type: 'savings', balance: 3000, user_id: u2.id)
a4 = Account.create(name: 'My Checkings', account_type: 'checking', balance: 3000, user_id: u3.id)
a5 = Account.create(name: 'My Checkings 2', account_type: 'checking', balance: 2500, user_id: u3.id)
a6 = Account.create(name: 'Savings', account_type: 'savings', balance: 4500, user_id: u3.id)


#Transaction 

t1 = Transaction.create(account_id: a1.id, name: 'groceries', amount: 100, category: "food", date: DateTime.new(2020,11,18), vendor: "MOM's Organic", note: "Purchase made every 2 weeks", t_type: "expense")
t2 = Transaction.create(account_id: a1.id, name: 'Movie Tickets', amount: 56, category: "entertainment", date: DateTime.new(2018,12,1), vendor: "AMC",  note: "", t_type: "expense")
t3 = Transaction.create(account_id: a3.id, name: 'Electric Bill', amount: 180, category: "utilities", date: DateTime.new(2020,10,18), vendor: "Dominion Energy", note: "Purchase made every month", t_type: "expense")
t4 = Transaction.create(account_id: a2.id, name: 'Summer Job', amount: 300, category: "income", date: DateTime.new(2019,10,5), vendor: "Dave and Busters", note: "", t_type: "income")
t5 = Transaction.create(account_id: a4.id, name: 'Pilates', amount: 100, category: "expense", date: DateTime.new(2020,10,5), vendor: "Pilates World", note: "", t_type: "expense")
t6 = Transaction.create(account_id: a4.id, name: 'Groceries', amount: 50, category: "expense", date: DateTime.new(2020,10,3), vendor: "Whole Foods", note: "", t_type: "expense")



