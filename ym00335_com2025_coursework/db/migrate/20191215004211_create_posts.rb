class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.belongs_to :user, null: false, foreign_key: true      
      t.string :title, null: false
      t.text :description
      t.string :image, null: false

      t.timestamps
    end
  end
end
