module HabitsHelper

	def find_real_habits(user)
		user.habits.select {|habit| !habit.aftertrigger.nil? }
	end

end
