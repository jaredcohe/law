class AddVotesCountToTruths < ActiveRecord::Migration
  def self.up
    add_column :truths, :votes, :integer
  end

  def self.down
    remove_column :truths, :votes
  end
end
