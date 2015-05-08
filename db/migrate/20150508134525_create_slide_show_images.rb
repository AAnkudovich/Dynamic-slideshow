class CreateSlideShowImages < ActiveRecord::Migration
  def change
    create_table :slide_show_images do |t|
      t.string :link
      t.string :altText
      t.text :captionText
      t.integer :possition
      t.integer :right
      t.string :textAllign
      t.integer :maxWidth
      t.integer :top
      t.integer :marginLeft

      t.timestamps null: false
    end
  end
end
