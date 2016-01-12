class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :comments, through: :forum
  acts_as_voter
  has_one :profile
  has_many :forums
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :firstname, presence: true, length: {minimum: 5}
  validates			:phone, presence: true, length: {is: 10}
end
