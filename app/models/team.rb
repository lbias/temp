class Team < ActiveRecord::Base

  COLORS = %w(red blue)

  belongs_to :match
  has_many :games, class_name: 'Game', foreign_key: :winner_id
  has_many :team_users
  has_many :players, through: :team_users, class_name: 'User', source: :user

  validate :players_limit

  def name
    players.map(&:name).join(' & ')
  end

  private

  def players_limit
    if players.size > 2
      errors.add(:players, "can't has more then 2 players")
    end
  end
end
