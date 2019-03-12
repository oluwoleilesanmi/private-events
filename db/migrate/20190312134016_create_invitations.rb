class CreateInvitations < ActiveRecord::Migration[5.2]
  def change
    create_table :invitations do |t|
      t.references :user, foreign_key: true
      t.references :event, foreign_key: true
      t.boolean :attend
      t.boolean :invite

      t.timestamps
    end
  end
end
