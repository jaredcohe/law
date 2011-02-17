class AddColumnToTruths < ActiveRecord::Migration
  def self.up
    add_column :truths, :author_name, :text
  end

  def self.down
    remove_column :truths, :author_name
  end
end
