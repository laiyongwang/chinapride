class AddColumnToProduct < ActiveRecord::Migration
  def self.up
    add_column :products, :name_cn, :string
    add_column :products, :content_cn, :text
  end

  def self.down
    remove_column :products, :content_cn
    remove_column :products, :name_cn
  end
end
