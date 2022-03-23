class Book < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :author, presence: true
  validates :deadline_for_return, presence: true
end
