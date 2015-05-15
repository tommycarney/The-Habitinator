class User < ActiveRecord::Base
	enum role: [:student, :admin]
	after_initialize :set_default_role, :if => :new_record?
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :habits, :dependent => :destroy
  accepts_nested_attributes_for :habits, allow_destroy: true
  after_create :subscribe_user_to_mailing_list


   def set_default_role
   	self.role ||= :student
   end



   def subscribe_user_to_mailing_list
    SubscribeUserToMailingListJob.perform_later(self)
  end
   
end
