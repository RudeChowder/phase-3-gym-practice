class Membership < ActiveRecord::Base
  belongs_to :gym
  belongs_to :member

  def print_membership
    puts "Membership for #{member.name} at #{gym.name} Start Date: #{start_month} #{start_year}"
  end
end
