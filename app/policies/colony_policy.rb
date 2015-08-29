class ColonyPolicy < ApplicationPolicy

  def index?
    true
  end

  def create?
    user.present? && user.admin?
  end

  def show?
    true
  end

  def update?
    return true if user.present? && user.admin?

    user.present? && user == colony.user # not able to id user, join issue?
  end

  def destroy?
    user.present? && user.admin?
  end

  private

  def colony
    record 
  end

end
