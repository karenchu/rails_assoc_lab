class CreateBookLibraries < ActiveRecord::Migration
  def change
    create_table :book_libraries do |t|
      t.integer :library_id
      t.integer :book_id

      t.timestamps null: false
    end
  end
end
