# frozen_string_literal: true

class Ability
  include CanCan::Ability
  def initialize(user)
    user ||= User.new
    if user.client?
      can :manage, Report, user_id: user.id
    elsif user.admin?
      can :manage, :all
    else
      can :read, :all
    end
  end
end