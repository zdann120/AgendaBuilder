class SlotPolicy < ApplicationPolicy
  def index?
    false
  end

  def show?
    scope.where(:id => record.id).exists?
  end

  def create?
    user.email == 'nusbaumz@msu.edu'
  end

  def new?
    create?
  end

  def update?
    false
  end

  def edit?
    update?
  end

  def destroy?
    false
  end

  class Scope < Scope
    def resolve
      scope
    end
  end
end
