class CreateScrappers < ActiveRecord::Migration
  def change
    create_table :scrappers do |t|
      t.string :type
      t.text :description

      t.timestamps null: false
    end
  end
end
