class AddColumnToTruths < ActiveRecord::Migration
  def self.up
    add_column :truths, :author_name, :text
  end

  def self.down
  end
end
