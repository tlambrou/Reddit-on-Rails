class Post < ApplicationRecord
  has_many :comments
  belongs_to :sub

  validates :title, :content, presence: true
end
