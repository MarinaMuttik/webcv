class AddEmailToMessages < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :contact_email, :string
  end
end
