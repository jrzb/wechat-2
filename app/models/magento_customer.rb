class MagentoCustomer < ActiveRecord::Base
  attr_accessible :email, :user_id, :wechat_user_open_id, :isentry, :islocked
  has_many :cards


  
  def saveCards(order_no,wechat_user_open_id,content,image_url)
  	card = nil
  	if Card.where(:order_no => order_no).exists?
  		card = Card.where(:order_no => order_no).first
  	else
  		card = Card.new
  		card.card_image = CardImage.new

  	end

    unless content.nil?
      card.content = content
      card.card_image.title = content
    end
    
    unless image_url.nil?
      card.card_image.picture_file_name = image_url
    end

    card.wechat_user_open_id = wechat_user_open_id
    card.order_no = order_no
    card.card_image.order_no = order_no
    card.card_image.wechat_user_open_id = wechat_user_open_id
    card.url = Digest::MD5.hexdigest(order_no).to_s
    #card.magento_customer = self
    self.cards << card
    self.save
  #  card.card_image.save

  	
	end
end
