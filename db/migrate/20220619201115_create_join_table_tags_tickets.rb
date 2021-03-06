class CreateJoinTableTagsTickets < ActiveRecord::Migration[7.0]
  def change
    create_join_table :tags, :tickets do |t|
      t.index [:tag_id, :ticket_id], unique: true
      t.index [:ticket_id, :tag_id]
    end
  end
end
