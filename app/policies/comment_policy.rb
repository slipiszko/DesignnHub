class CommentPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true
  end

  def upvote?
    true
  end

  def downvote?
    true
  end

  def update?
    record.user == user
  end

  def destroy?
    record.user == user
  end
end
