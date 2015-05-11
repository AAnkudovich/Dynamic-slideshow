class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :link
      t.string :altText
      t.text :captionText
      t.integer :possition
      t.integer :right
      t.string :textAlign
      t.integer :maxWidth
      t.integer :top
      t.integer :marginLeft
      t.boolean :live

      t.timestamps null: false
    end
  end
end
