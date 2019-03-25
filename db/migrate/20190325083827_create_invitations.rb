class CreateInvitations < ActiveRecord::Migration[5.2]
  def change
    create_table :invitations do |t|
      t.integer :sender_id
      t.integer :reciever_id
      t.references :event, foreign_key: true
      t.boolean :attend
      t.boolean :invite

      t.timestamps
    end
  end
end
