class MessageReceiveLink < ActiveRecord::Base
  attr_accessible  :description, :origin_source, :title, :url
belongs_to :message_receive

  # def self.save(from_user_name,to_user_name,msg_type,msg_id,create_time,title,url,description)
  # 	m = MessageReceiveLink.new
  # 	m.description = description
  # 	m.from_user_name = from_user_name
  # 	m.to_user_name = to_user_name
  # 	m.msg_id = msg_id
  # 	m.msg_type = msg_type
  # 	m.create_time = create_time
  # 	m.title = title
  # 	m.url = url
  # 	m.save
  # end
end
