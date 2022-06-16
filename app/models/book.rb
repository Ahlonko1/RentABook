class Book < ApplicationRecord
  belongs_to :user
  belongs_to :author

  validates :title, :language, :synopsis, presence: true
end
