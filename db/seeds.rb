# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Product.create({
  name: "Mason Jar",
  price: 2,
  description: "A medium size glass jar with metal lid, great for storing food or liquid and using as a cup!",
  })

  Product.create({
  name: "Coffee Mug",
  price: 5,
  description: "White coffee mug with wide handle.",
  })


  Product.create({
  name: "Coaster",
  price: 1,
  description: "square drink coaster with a photo of a waterfall.",
  })