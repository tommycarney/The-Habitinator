class Habit < ActiveRecord::Base
	validates :aftertrigger, :length => { :minimum => 2, :message => "has invalid length"},
        :presence => {:message => "can't be blank"}
  	validates :behavior, presence: true
	belongs_to :user
end
