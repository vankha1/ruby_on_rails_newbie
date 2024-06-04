class Article < ApplicationRecord
  include Visible

  has_many :comments, dependent: :destroy # cascade delete

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
