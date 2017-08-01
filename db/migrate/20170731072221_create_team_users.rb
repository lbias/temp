class CreateTeamUsers < ActiveRecord::Migration
  def up
    drop_join_table :teams, :users
    create_table :team_users do |t|
      t.references :team, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end

  def down
    drop_table :team_users
    create_join_table :teams, :users do |t|
      t.index [:team_id, :user_id]
      t.index [:user_id, :team_id]
    end
  end
end
