puts "Creating gyms..."
Gym.create(name: "Globo Gym", rating: 1, price: 1000)
Gym.create(name: "Pewter City Gym", rating: 3, price: 50)
Gym.create(name: "Plant Fitness", rating: 4, price: 20)
Gym.create(name: "Crunch", rating: 5, price: 20)

puts "Creating members..."
Member.create(name: "Fred")
Member.create(name: "Daphne")
Member.create(name: "Velma")
Member.create(name: "Shaggy")
Member.create(name: "Scooby")

puts "Creating memberships..."

# ************************************************************************
# * TODO: create memberships! Remember, a membership belongs to a member *
# * and a membership belongs to a gym.                                   *
# ************************************************************************
# Create memberships Here
Membership.create(start_year: 2008, start_month: "March", gym: Gym.first, member: Member.second)
Membership.create(start_year: 2008, start_month: "March", gym: Gym.first, member: Member.first)
Membership.create(start_year: 2008, start_month: "March", gym: Gym.second, member: Member.first)

puts "Seeding done!"
