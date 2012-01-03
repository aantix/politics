class AddSearchableToCandidates < ActiveRecord::Migration
  def change
    add_column :candidates, :searchable, :boolean, :default => true
  end
end
