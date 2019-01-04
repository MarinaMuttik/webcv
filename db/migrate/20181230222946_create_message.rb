class CreateMessage < ActiveRecord::Migration[5.2]
  def change
    create_table :messages, force: true do |t|
      t.string :contact_name
      t.text :contact_message
      t.datetime :created_at, null: false
    end
  end
end
