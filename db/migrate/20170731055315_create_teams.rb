class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :color
      t.integer :match_id

      t.timestamps null: false
    end
  end
end
