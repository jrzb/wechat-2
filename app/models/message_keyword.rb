class MessageKeyword < ActiveRecord::Base
  attr_accessible :content
  has_and_belongs_to_many :message_auto_reply_texts, :join_table => "message_keywords_message_auto_reply_texts"
  has_and_belongs_to_many :message_auto_reply_musics, :join_table => "message_keywords_message_auto_reply_musics"
end
