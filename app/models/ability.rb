class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    can :read, :all
    can :manage, [Hospital], :user => user
    can :manage, [Doctor, Patient, HospitalAuthority], :id => user.id
  end
end
