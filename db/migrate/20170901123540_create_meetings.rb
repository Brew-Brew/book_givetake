class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
  
      t.string :name
      t.string :memo
      t.string :room
      t.string :term
      t.datetime :start_time
      t.datetime :end_time, default: Time.now

      t.timestamps null: false
    end
  end
end
