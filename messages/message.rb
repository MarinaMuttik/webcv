class Message < ActiveRecord::Base
  validates :contact_name, presence: true
  validates :contact_message, presence: true
end
