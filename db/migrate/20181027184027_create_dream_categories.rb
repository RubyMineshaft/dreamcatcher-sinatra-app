class CreateDreamCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :dream_categories do |t|
      t.integer :dream_id
      t.integer :category_id
    end
  end
end
