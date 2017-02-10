class AddCategorysTable < ActiveRecord::Migration[5.0]
  def change
    
    create_table :categorys do |t|
      t.string :title
      t.timestamps null: false
    end

  end
end
