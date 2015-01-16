class AlterColumnBookIsbn < ActiveRecord::Migration
  def self.up
    change_table :books do |t|
      t.change :isbn, :string
    end
  end
  def self.down
    change_table :books do |t|
      t.change :isbn, :integer
    end
  end
end
