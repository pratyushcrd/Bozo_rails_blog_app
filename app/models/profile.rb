class Profile < ActiveRecord::Base
  belongs_to :user
  has_attached_file :avatar, styles: { medium: "200x200#", thumb: "100x100#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: ['image/jpeg', 'image/jpg', 'image/png']
end
