class Member < ActiveRecord::Base
  has_many :memberships
  has_many :gyms, through: :memberships

  def latest_gym
    gyms.order(start_year: :desc).first
  end

  def remove_membership(gym)
    memberships.find_by(gym: gym).destroy
  end
end
