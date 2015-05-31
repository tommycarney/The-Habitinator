require "rails_helper"

Rspec.describe User do 
  
  before do 
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
end