class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :name
      t.text :description
      t.integer :party_id
      t.integer :order

      t.timestamps
    end
  end
end
