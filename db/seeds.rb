Goal.create!(user_id: 1, completed: true, description: "Be able to add a simple, concise React Component to my app without copy/pasting", due_date: Date.new, duration: "daily")
Goal.create!(user_id: 1, completed: true, description: "Have a killer presentation", due_date: Date.new, duration: "weekly")
Goal.create!(user_id: 1, completed: true, description: "Graduate with my head held high", due_date: Date.new, duration: "phase")
Rating.create!(goal_id: 1, score: 3)
