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

  # def upvote_comment?
  #   true
  # end

  # def upvoted_comment?
  #   true
  # end

  # def remove_vote_comment
  #   true
  # end

  # def downvote_comment
  #   true
  # end

  # def downvoted_comment?
  #   true
  # end
end
