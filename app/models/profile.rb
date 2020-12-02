class Profile < ApplicationRecord
  belongs_to :user, optional: true
  validates :postal_code, :profile ,presence: true
  has_many :rooms

  with_options presence: true do
  validates :nickname           
  validates :email              
  validates :encrypted_password 
  validates :age               
  validates :children           
  validates :info                 
  end
end
