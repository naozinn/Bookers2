class Book < ApplicationRecord

  belongs_to :user
  # has_many :post_comments, dependent: :destroy
  validates :title, presence: true,
  length: { minimum: 1}

  validates :body, presence: true,
  length: {  maximum: 200}
end
