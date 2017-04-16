# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
[User, Company, Listing, Post, Comment].each do |model|
  ActiveRecord::Base.connection.execute("TRUNCATE #{model.table_name} RESTART IDENTITY CASCADE")
end

[{
  username: "mersoz",
  email: "muge@ersoz.org",
  password_digest: "",
  first_name: "Muge",
  last_name: "Ersoz",
  industry: "Internet",
  country_of_origin: "Turkey",
  seeking_work: true
  }].each do |user|
  User.create!(user)
end

[{
  name: "MadeUp Company",
  careers_url: "www.google.com",
  glassdoor_id: 123,
  status: true
  }].each do |company|
  Company.create!(company)
end

[{
  api_source: "MadeUp",
  job_id: 321,
  user_id: 1,
  company_id: 1,
  active: true
  }].each do |listing|
  Listing.create!(listing)
end

[{
  subject: "Tier 2 Visa Info",
  body: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  user_id: 1
  }].each do |post|
  Post.create!(post)
end
[{
  body: "Comment here for further questions! :)",
  user_id: 1,
  post_id: 1
  }].each do |comment|
  Comment.create!(comment)
end
