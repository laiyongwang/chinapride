class AddColumnToCategory < ActiveRecord::Migration
  def self.up
    add_column :categories, :name_cn, :string
  end

  def self.down
    remove_column :categories, :name_cn
  end
end
