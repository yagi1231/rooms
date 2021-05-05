class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :room
      t.string :introduce
      t.string :address
      t.string :fee
      t.string :image_post

      t.timestamps
    end
  end
end
