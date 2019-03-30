class User < ApplicationRecord
  has_many :events, dependent: :destroy
  has_many :events, through: :invitations

  has_many :active_invitations, class_name: "Invitation", foreign_key: "sender_id", dependent: :destroy
  has_many :passive_invitations, class_name: "Invitation", foreign_key: "reciever_id", dependent: :destroy
  
  has_many :sender, through: :active_invitaions, source: :reciever
  has_many :reciever, through: :passive_invitaions, source: :sender

end
