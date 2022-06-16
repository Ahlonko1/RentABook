class Book < ApplicationRecord
  belongs_to :user
  belongs_to :author

  include PgSearch::Model
  multisearchable against: [:title, :synopsis, :language]

  validates :title, :language, :synopsis, presence: true
end
