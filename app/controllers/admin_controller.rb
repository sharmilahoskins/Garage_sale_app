class AdminController < ApplicationController
  before_action :authenticate_user!
  before_action :authorize

  # get "admin"
  def index
    @users = User.all
    if params[:search].nil? || params[:search].empty?
      @sales = Sale.all
    else
      @sales = Sale.basic_search(params[:search])
    end
    @ability = Ability.new(current_user)
  end

    # put/patch "admin/:id"
    def update
      user = User.find(params[:id])
      if user.has_role? :user
        user.remove_role(:user) # user only has one role
        user.add_role(:admin)
      else
        user.remove_role(:admin) # user only has one role
        user.add_role(:user)
      end
      redirect_to '/admin'
    end

    private

    def authorize
      if !current_user.has_role? :admin
        render plain:"No access for you!"
      end
    end
end
