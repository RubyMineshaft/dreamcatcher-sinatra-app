class UpdateColumnWithDefaultValue < ActiveRecord::Migration[5.2]
  def change
    change_column :dreams, :private?, :boolean, :default => false
  end
end
