class CreateCardImages < ActiveRecord::Migration
  def change
    create_table :card_images do |t|
      t.string :order_no
      t.string :wechat_user_open_id
      t.string :title
      t.string :picture_file_name
      t.string :picture_content_type
      t.integer :picture_file_size
      t.belongs_to :card
      t.timestamps
    end
  end
end
