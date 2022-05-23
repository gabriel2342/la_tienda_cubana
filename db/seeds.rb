# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

ItemType.create(name: "Painting")
ItemType.create(name: "Sculpture")
ItemType.create(name: "Woodwork")
ItemType.create(name: "Vinyl")

Location.create(name: "Holguin")
Location.create(name: "Santiago")
Location.create(name: "Velasco")
Location.create(name: "Matanzas")

5.times do 
  Item.create(creator: "Beny More", 
              item_name: "Los Clasicos", 
              description: "A collection of the greatest hit from one of Cuba's most well known musicians", 
              item_type_id: 4, location_id: 2,  
              quantity: 42, 
              price: "23.42")

  Item.create(creator: "Silvio Rodriguez", 
              item_name: "Al final de este viaje...", 
              description: "This album shows Silvio Rodriguez accompanied only by his acoustic guitar, and includes songs composed between 1968 and 1970. It is one of his most direct works, without the use of larger arrangements. It includes some of his classic songs such as Ojalá, Canción del Elegido and Óleo de Mujer Con Sombrero.", 
              item_type_id: 4, location_id: 2,  
              quantity: 23, 
              price: "42.23")
end