class User < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  has_many :designs, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :votes

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true

  def upvote(design, comment)
    votes.create(upvote: 1, design: design, comment: comment)
  end

  def upvoted?(design, comment)
    votes.exists?(upvotes: 1, design: design, comment: comment)
  end

  def remove_vote(design, comment)
    votes.find_by(design: design, comment: comment).destroy
  end

  def downvote(design, comment)
    votes.create(downvote: 1, design: design, comment: comment)
  end

  def downvoted?(design, comment)
    votes.exists?(downvote: 1, design: design, comment: comment)
  end
end
