class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :name
      t.references :post

      t.timestamps
    end
    add_index :tests, :post_id
  end
end
