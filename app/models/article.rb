class Article < ApplicationRecord
  include Visible
  belongs_to :user
  has_many :comments, dependent: :destroy # cascade delete

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }

  before_validation :handle_before_validation

  def handle_before_validation
    self.status = "public"
  end

  scope :get_private, -> { where(status: "private")}
end
