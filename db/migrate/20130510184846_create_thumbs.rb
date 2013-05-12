class CreateThumbs < ActiveRecord::Migration
  def change
    create_table :thumbs do |t|
      t.integer :insult_id
      t.boolean :up

      t.timestamps
    end
  end
end
