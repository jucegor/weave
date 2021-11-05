class UserReview < ApplicationRecord
  belongs_to :user
  belongs_to :organization, class_name: 'User'
end
