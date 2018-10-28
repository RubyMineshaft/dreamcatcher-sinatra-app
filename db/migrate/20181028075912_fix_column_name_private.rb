class FixColumnNamePrivate < ActiveRecord::Migration[5.2]
  def change
    rename_column :dreams, :private?, :private 
  end
end
