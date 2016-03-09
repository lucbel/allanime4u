class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :scrappers, :type, :category
  end
end



