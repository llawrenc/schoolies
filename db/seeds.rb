puts "Seeding Roles..."
Role.create!(name: :'Admin')
Role.create!(name: :'Worker')
puts "Seeding Users..."
user1 = User.create!(username: 'Nicole',
				    email: 'admin@gmail.com',
				    password: 'password1234',
				    password_confirmation: 'password1234')
user1.add_role(:'Admin')
user2 = User.create!(username: 'Bruce',
				    email: 'client@gmail.com',
				    password: 'password1234',
				    password_confirmation: 'password1234')
user2.add_role(:'Worker')
puts "Seeding Locations..."
location1 = Location.create!(name: "Beach")
location2 = Location.create!(name: "Up the road")
location3 = Location.create!(name: "Around the bend")
location4 = Location.create!(name: "Mall")
puts "Seeding Categories..."
category1 = Category.create!(name: 'Nuisance',
                            active: true)
category2 = Category.create!(name: 'Violent Behaviour',
                            active: true)
category3 = Category.create!(name: 'Injury',
                            active: true)
puts "Seeding Subcategories..."
subcategory1 = Subcategory.create!(name: 'Drunk & Disorderly',
                            category_id: 1,
                            active: true)
subcategory1 = Subcategory.create!(name: 'Loss of self control',
                            category_id: 1,
                            active: true)
subcategory2 = Subcategory.create!(name: 'Fighting',
                            category_id: 2,
                            active: true)
subcategory3 = Subcategory.create!(name: 'Concussion',
                            category_id: 3,
                            active: true)
subcategory4 = Subcategory.create!(name: 'Limb Injury',
                            category_id: 3,
                            active: true)
puts "Seeding Reports..."
1.upto(3) do |i|
	Report.create!(title: "Drunk #{i}",
				   date_occurred: 2.days.ago,
				   user: user1,
                   location: location1,
                   category: category1,
                   subcategory: subcategory1)
end
1.upto(3) do |i|
	Report.create!(title: "Fight #{i}",
				   date_occurred: 1.days.ago,
				   user: user2,
                   location: location2,
                   category: category2,
                   subcategory: subcategory2)
end
puts "Seeding Done!"
