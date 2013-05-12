class CreateInsults < ActiveRecord::Migration
  def change
    create_table :insults do |t|
      t.string :name
      t.string :adjective
      t.string :noun
      t.string :smell_like

      t.timestamps
    end
  end
end
