class User < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  has_many :portfolios
  has_many :designs, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :votes
  has_many :job_posts, dependent: :destroy
  has_many :job_applications
  has_many :job_experiences, dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true

  def upvote_comment(comment)
    votes.create(upvotes: 1, comment: comment)
  end

  def upvoted_comment?(comment)
    votes.exists?(upvotes: 1, comment: comment)
  end

  def remove_vote_comment(comment)
    if comment.upvotes.zero? && comment.downvotes.zero?
      return
    else
      votes.find_by(comment: comment).destroy
    end
  end

  def downvote_comment(comment)
    votes.create(downvotes: 1, comment: comment)
  end

  def downvoted_comment?(comment)
    votes.exists?(downvotes: 1, comment: comment)
  end

  def upvote_answer(answer)
    votes.create(upvotes: 1, answer: answer)
  end

  def upvoted_answer?(answer)
    votes.exists?(upvotes: 1, answer: answer)
  end

  def remove_vote_answer(answer)
    if answer.upvotes.zero? && answer.downvotes.zero?
      return
    else
      votes.find_by(answer: answer).destroy
    end
  end

  def downvote_answer(answer)
    votes.create(downvotes: 1, answer: answer)
  end

  def downvoted_answer?(answer)
    votes.exists?(downvotes: 1, answer: answer)
  end
end
