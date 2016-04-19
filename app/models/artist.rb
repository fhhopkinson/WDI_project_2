class Artist < ActiveRecord::Base
  has_many :pieces

  include BCrypt

  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true, on: :create
  has_secure_password

  mount_uploader :profile_pic, ImageUploader
end
