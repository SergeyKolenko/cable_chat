class Message < ApplicationRecord
  belongs_to :user
  belongs_to :chat_room

  validates :user, :chat_room, :text, presence: true

  def timestamp
    created_at.strftime('%H:%M:%S %d %B %Y')
  end
end
