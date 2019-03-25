class RemoveInviteFromInvitations < ActiveRecord::Migration[5.2]
  def change
    remove_column :invitations, :invite, :boolean
  end
end
