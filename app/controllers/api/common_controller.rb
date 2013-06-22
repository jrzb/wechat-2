# encoding: utf-8
class Api::CommonController < Api::ApplicationController
	skip_before_filter :verify_authenticity_token
	before_filter :verify_request_source

	def test
		render :text => params[:echostr]
	end

	def echo
		@message = MessageSendText.new
		@message.to_user_name = params[:xml][:FromUserName]
		@message.from_user_name = params[:xml][:ToUserName]
		@message.create_time = Time.now
		case params[:xml][:MsgType]
		when "text"
			@message.content = "我们收到了您的文本信息"
		when "image"
			@message.content = "我们收到了您的图片信息"
		when "location"
			@message.content = "我们收到了您的位置信息"
		when "voice"
			@message.content = "我们收到了您的留言信息"
		end
		p @message
		render :xml, :template => 'api/message_text'
	end

end
