class UnsubscribeDeletedUserJob < ActiveJob::Base
  queue_as :default

  def perform(user)
    gb = Gibbon::API.new
    gb.lists.unsubscribe(:id => ENV['MAILCHIMP_LIST_ID'], :email => {:email => user.email}, :delete_member => false, :send_notify => true)
    # Do something later
  end
end
