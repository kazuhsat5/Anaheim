class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :priority
      t.string :item
      t.string :position
      t.string :finder
      t.date :findDate
      t.string :responder
      t.date :responseDate
      t.boolean :isCorrespond

      t.timestamps null: false
    end
  end
end
