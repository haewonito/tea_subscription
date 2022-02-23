# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@haewon = Customer.create!(first_name: "Haewon", last_name: "Jeon", email: "haewon@email.com", address: "305 Hook St., Denver, CO 80525")
@sang = Customer.create!(first_name: "Sangmin", last_name: "Park", email: "sang@email.com", address: "299 Drake, Fort Collins, CO 80205")
@john = Customer.create!(first_name: "John", last_name: "Morris", email: "john@email.com", address: "2953 Mountain St, Colorado Springs, CO 80000")
@bill = Customer.create!(first_name: "Bill", last_name: "Burke", email: "@billemail.com", address: "399 Kensington Ave, Boston, MA 00035")
@adrienne = Customer.create!(first_name: "Adrienne", last_name: "Somners", email: "adrienne@email.com", address: "988 Nowhere St., Denver, CO 80025")

@sencha = Tea.create!(name: "Sencha", description: "Clean and crisp", temperature: 140, brew_time_in_minutes: 5, price_per_oz: 20)
@rimpo = Tea.create!(name: "Rimpo", description: "Deep, sweet and hearty", temperature: 145, brew_time_in_minutes: 6, price_per_oz: 30)
@mantoku = Tea.create!(name: "Mantoku", description: "Light and refreshing", temperature: 90, brew_time_in_minutes: 5, price_per_oz: 15)
@kuon = Tea.create!(name: "Kuon", description: "Rich and fragrant", temperature: 180, brew_time_in_minutes: 3, price_per_oz: 25)
@bingdao = Tea.create!(name: "Bingdao", description: "Soft sweet and refreshing", temperature: 91, brew_time_in_minutes: 6, price_per_oz: 80)
@mansong = Tea.create!(name: "Man Song", description: "Warm sweet and strong", temperature: 91, brew_time_in_minutes: 6, price_per_oz: 125)


@subscription1 = Subscription.create!(title: "Subscription1", frequency: "biweekly", customer_id: @haewon.id, tea_id: @sencha.id)
@subscription2 = Subscription.create!(title: "Subscription2", frequency: "bimonthly", customer_id: @haewon.id, tea_id: @mansong.id)
@subscription3 = Subscription.create!(title: "Subscription3", frequency: "weekly", customer_id: @sang.id, tea_id: @sencha.id)
@subscription4 = Subscription.create!(title: "Subscription4", frequency: "monthly", customer_id: @sang.id, tea_id: @bingdao.id)
@subscription5 = Subscription.create!(title: "Subscription5", frequency: "monthly", customer_id: @john.id, tea_id: @rimpo.id)
@subscription6 = Subscription.create!(title: "Subscription6", frequency: "biweekly", customer_id: @bill.id, tea_id: @sencha.id)
@subscription7 = Subscription.create!(title: "Subscription7", frequency: "bimonthly", customer_id: @adrienne.id, tea_id: @mantoku.id)
@subscription8 = Subscription.create!(title: "Subscription8", frequency: "weekly", customer_id: @adrienne.id, tea_id: @kuon.id)
@subscription9 = Subscription.create!(title: "Subscription9", frequency: "monthly", customer_id: @adrienne.id, tea_id: @bingdao.id)
@subscription10 = Subscription.create!(title: "Subscription10", frequency: "bimonthly", customer_id: @adrienne.id, tea_id: @mansong.id)
