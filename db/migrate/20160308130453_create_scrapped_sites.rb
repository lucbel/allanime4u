class CreateScrappedSites < ActiveRecord::Migration
  def change
    create_table :scrapped_sites do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
