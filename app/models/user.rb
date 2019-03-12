class User < ApplicationRecord
  has_many :events
  has_many :invitations
  has_many :events, through: :invitations

end
