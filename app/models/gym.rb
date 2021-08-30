class Gym < ActiveRecord::Base
  has_many :memberships
  has_many :members, through: :memberships

  def join_gym(member, start_year, start_month)
    Membership.create(start_year: start_year, start_month: start_month, member: member, gym: self)
  end

  def print_all_memberships
    memberships.each { |membership| membership.print_membership }
  end

  def first_member
    members.order(:start_year).limit(1)
  end

  def self.best_value
    highest_ratio = all.map { |g| g.rating.to_f / g.price }.max
    all.filter { |g| g.rating.to_f / g.price == highest_ratio }
  end
end
