class Response < ApplicationRecord
  belongs_to :user
  belongs_to :answer
  belongs_to :comment
  belongs_to :critique
end
