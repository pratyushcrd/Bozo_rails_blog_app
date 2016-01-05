class Forum < ActiveRecord::Base
  acts_as_votable
  has_many :comments, dependent: :destroy
  belongs_to :user
  belongs_to :category
  validates :title, presence: true, null: false
  validates :post,presence: true, null: false
end
