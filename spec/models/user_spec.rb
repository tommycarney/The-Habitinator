require "rails_helper"

RSpec.describe User, :type => :model do 

  before do 
    User.any_instance.stub(:subscribe_user_to_mailing_list)
    @user = User.new(name: "Caro Hardy", email: "caro@carohardy.com", password: "MyPassword")
  end

  subject { @user }

  it { should respond_to(:name) }
  it { should respond_to(:email) }
  it { should respond_to(:role) }

  it { should be_valid }
  it { should_not be_admin }

  describe "with role set to admin" do
    before do 
      @user.save!
      @user.role = 1
    end

    it { should be_admin }
  end

  describe "with a habit" do
    before do
      @habit = Habit.new(beforetrigger: "After I make a coffee", behavior: "I will stretch", user_id: @user.id)
      @habit.save!
    end
    expect(@user.habits.first).to eq(@habit)
  end

  
end