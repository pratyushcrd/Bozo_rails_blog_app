class Forum < ActiveRecord::Base
  acts_as_votable
  acts_as_commentable
  belongs_to :user
  belongs_to :category
  validates :title, presence: true, null: false
  validates :post,presence: true, null: false
end
