
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         "Epicure au Bristol",
    address:      "112 rue du Fg St-Honoré 75008 Paris",
    phone:        "3565959323",
    category:        "3"
  },
  {
    name:         "La truffière",
    address:      "4 rue Blainville 75005 Paris",
    phone:        "2545959323",
    category:        "1"
  },
  {
    name:         "Le pré catelan",
    address:      "route de Suresnes 75016 Paris",
    phone:        "9895945423",
    category:        "3"
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
