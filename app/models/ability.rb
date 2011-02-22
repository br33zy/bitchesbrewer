class Ability
  include CanCan::Ability

  def initialize(user)
    can :create, Brewery
    can :manage, Brewery,                              :user_id => user.id
    can :manage, Brew,                   :brewery => { :user_id => user.id }
    can :manage, Fermentable, :brew => { :brewery => { :user_id => user.id }}
    can :manage, HopAddition, :brew => { :brewery => { :user_id => user.id }}
    can :manage, BrewSheet,   :brew => { :brewery => { :user_id => user.id }}
    can :read, :all

  end
end