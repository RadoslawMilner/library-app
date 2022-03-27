class Book < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :author, presence: true
  validates :release_date, presence: true
end
