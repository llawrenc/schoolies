Role.create(name: :admin)
Role.create(name: :client)
user1 = User.create(username: 'Nicole',
				    email: 'admin@gmail.com',
				    password: 'password1234',
				    password_confirmation: 'password1234')
user1.add_role(:admin)
user2 = User.create(username: 'Bruce',
				    email: 'client@gmail.com',
				    password: 'password1234',
				    password_confirmation: 'password1234')
user2.add_role(:client)
location1 = Location.create(name: "Beach")
location2 = Location.create(name: "Up the road")
location3 = Location.create(name: "Around the bend")
location4 = Location.create(name: "Mall")
category1 = Category.create(name: 'Nuisance',
                            active: true)
category2 = Category.create(name: 'Violent Behaviour',
                            active: true)
category3 = Category.create(name: 'Injury',
                            active: true)
subcategory1 = Subcategory.create(name: 'Drunk & Disorderly',
                            category_id: 1,
                            active: true)
subcategory1 = Subcategory.create(name: 'Loss of self control',
                            category_id: 1,
                            active: true)
subcategory2 = Subcategory.create(name: 'Fighting',
                            category_id: 2,
                            active: true)
subcategory3 = Subcategory.create(name: 'Concussion',
                            category_id: 3,
                            active: true)
subcategory4 = Subcategory.create(name: 'Limb Injury',
                            category_id: 3,
                            active: true)
1.upto(3) do |i|
	Report.create(title: "Drunk #{i}",
				   date_occurred: 2.days.ago,
				   user: user1,
                   category_id: category1.id,
                   subcategory_id: subcategory1.id)
end
1.upto(3) do |i|
	Report.create(title: "Fight #{i}",
				   date_occurred: 1.days.ago,
				   user: user2,
                   category_id: category2.id,
                   subcategory_id: subcategory2.id)
end

