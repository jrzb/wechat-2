class CreateMessageReceiveLocations < ActiveRecord::Migration
  def change
    create_table :message_receive_locations do |t|
      t.string :to_user_name
      t.string :from_user_name
      t.datetime :create_time
      t.string :msg_type
      t.decimal :location_x
      t.decimal :location_y
      t.integer :scale
      t.string :label
      t.integer :msg_id, :limit => 8
      t.text :origin_source
       t.belongs_to :message_receive
      t.timestamps
    end
  end
end
