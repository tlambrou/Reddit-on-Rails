class Sub < ApplicationRecord
  has_many :posts

  validates :name, presence: true
end
