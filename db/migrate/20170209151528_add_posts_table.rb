class AddPostsTable < ActiveRecord::Migration[5.0]
  def change
    
    create_table :posts do |t| 
      t.string :title
      t.text :content
      t.timestamps null: false #寫入時間
    end

  end
end
