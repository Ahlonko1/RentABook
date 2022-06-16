class Book < ApplicationRecord
  belongs_to :user
  belongs_to :author

  include PgSearch::Model
  pg_search_scope :search_by_title_and_language,
    against: [ :title, :language ],
    using: {
      tsearch: { prefix: true }
    }
  validates :title, :language, :synopsis, presence: true
end
