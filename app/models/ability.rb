class Ability
  include CanCan::Ability

  def initialize(user)
    if user.nil?
 # if no user logged in, use a dummy user, see later
      user = User.new
    end
    if user.has_role? :admin
      can :manage, :all
    elsif user.has_role? :user
      can [:read, :create], :all
      can :manage, Sale, user_id: user.id
      can :manage, Item do |item|
        
        item.sale.user_id == user.id
      end



    else
      can [:read], :all
    end

   end
end
