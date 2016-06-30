person = User.create!(username: "david", password: "password", password_confirmation: "password", avatar_url: "http://nation.com.pk/print_images/large/2014-04-23/1398268898-9179.jpg", email: "davidrules@email.com", experience: 100)

person.goals.create!(description: "Comb hair for presentation", duration: "daily", completed: "false", due_date: "2016-07-31 00:00:00")

person.goals.create!(description: "Give pair feedback after every day", duration: "daily", completed: "false", due_date: "2016-07-31 00:00:00")

person.goals.create!(description: "Journal about the joys of Nokogiri", duration: "weekly", completed: "false", due_date: "2016-07-31 00:00:00")

person.goals.create!(description: "Make it through DBC without losing my cool", duration: "phase", completed: "false", due_date: "2016-07-31 00:00:00")
