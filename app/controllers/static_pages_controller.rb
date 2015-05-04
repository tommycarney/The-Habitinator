class StaticPagesController < ApplicationController
  
  def home
    if current_user && !current_user.habits.empty?
      redirect_to habits_path
    end

  end

  def help
  end

  def about
  end

  def contact
  end
end
