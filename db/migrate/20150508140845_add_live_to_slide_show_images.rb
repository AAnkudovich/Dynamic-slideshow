class AddLiveToSlideShowImages < ActiveRecord::Migration
  def change
    add_column :slide_show_images, :live, :boolean
  end
end
