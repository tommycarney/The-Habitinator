class Habit < ActiveRecord::Base
	 validates :aftertrigger, presence: true
  	validates :behavior, presence: true
	belongs_to :user
end
