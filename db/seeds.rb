Goal.create!(user_id: 1, completed: true, description: "Be able to add a simple, concise React Component to my app without copy/pasting", due_date: Date.new, duration: "daily")
Goal.create!(user_id: 1, completed: true, description: "Have a killer presentation", due_date: Date.new, duration: "weekly")
Goal.create!(user_id: 1, completed: true, description: "Build a beautiful web app by the end of my time at DBC", due_date: Date.new, duration: "phase")
Rating.create!(goal_id: 1, score: 3)
