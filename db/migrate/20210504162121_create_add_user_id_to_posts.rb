class CreateAddUserIdToPosts < ActiveRecord::Migration[6.1]
  def change
    create_table :add_user_id_to_posts do |t|

      t.timestamps
    end
  end
end
