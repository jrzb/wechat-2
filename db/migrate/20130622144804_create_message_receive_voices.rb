class CreateMessageReceiveVoices < ActiveRecord::Migration
  def change
    create_table :message_receive_voices do |t|
      t.string :to_user_name
      t.string :from_user_name
      t.datetime :create_time
      t.string :msg_type
      t.string :media_id
      t.string :format
      t.integer :msg_id, :limit => 8
      t.string :recognition
      t.text :region_source
       t.belongs_to :message_receive
      t.timestamps
    end
  end
end
