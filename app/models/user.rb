class User < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :bio, length: { maximum: 300 }

  has_many :follower_relationships, foreign_key: :following_id, class_name: 'Follow'
  has_many :followers, through: :follower_relationships, source: :follower

  has_many :following_relationships, foreign_key: :follower_id, class_name: 'Follow'
  has_many :following, through: :following_relationships, source: :followin

  has_many :critiques, dependent: :destroy
  has_many :portfolios, dependent: :destroy
  has_many :designs, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :votes, dependent: :destroy
  has_many :job_posts, dependent: :destroy
  has_many :job_applications, dependent: :destroy
  has_many :job_experiences, dependent: :destroy
  has_many :questions, dependent: :destroy

  def follow(user_id)
    following_relationships.create(following_id: user_id)
  end

  def unfollow(user_id)
    following_relationships.find_by(following_id: user_id).destroy
  end

  def is_following?(user_id)
    relationship = Follow.find_by(follower_id: id, following_id: user_id)
    return true if relationship
  end

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
