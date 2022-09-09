Supplier.create!([
  {name: "Supplier 1", email: "supplier1@test.com", phone_number: "(555)234-5678"},
  {name: "Supplier 2", email: "supplier2@test.com", phone_number: "(555)234-1234"},
  {name: "Supplier 3", email: "supplier3@email.com", phone_number: "(111)111-2111"},
  {name: "Supplier 4", email: "supplier4@email.com", phone_number: "(211)111-7111"}
])
Product.create!([
  {name: "Table", price: "45.0", description: "flat with four legs", inventory: 1, supplier_id: 1},
  {name: "Mason Jar", price: "2.0", description: "A medium size glass jar with metal lid, great for storing food or liquid and using as a cup!", inventory: 1, supplier_id: 1},
  {name: "Fork", price: "7.0", description: "a four pronged eating untesil.", inventory: 1, supplier_id: 1},
  {name: "Coffee Mug", price: "5.0", description: "White coffee mug with wide handle.", inventory: 1, supplier_id: 1},
  {name: "Coaster", price: "1.0", description: "square drink coaster perfect for protecting tables and catching condensation!", inventory: 1, supplier_id: 1},
  {name: "Journal", price: "12.0", description: "300 blank pages, 8x5, great for sketching and writing.", inventory: 1, supplier_id: 2},
  {name: "Rug", price: "10.0", description: "blue and white area rug would look beautiful in any home", inventory: 1, supplier_id: 2},
  {name: "Chair", price: "14.0", description: "This is a description", inventory: 1, supplier_id: 2},
  {name: "This is Sadie by Sara O'Leary", price: "6.0", description: "Now in board book, the beloved story about a little girl with a big imagination from the award-winning team of Sara O'Leary and Julie Morstad.  Sadie is a little girl with a big imagination...", inventory: 1, supplier_id: 1},
  {name: "Magic the Gathering : Lyra Dawnbringer", price: "3.0", description: "Flying, first strike, lifelink
  Other Angels you control get +1/+1 and have lifelink. Great Commander for mono-white Angels Deck", inventory: 1, supplier_id: 1},
])
Image.create!([
  {url: "https://media.istockphoto.com/photos/empty-glass-jar-with-silver-lid-isolated-on-white-picture-id1283219444?k=20&m=1283219444&s=612x612&w=0&h=G__MshHNLgZhXig8D5Q-5K8-kF4sY7P8Ly8tPFvsUBw=", product_id: 2},
  {url: "https://splendids.com/images/products/large/10322.jpg", product_id: 4},
  {url: "https://media.istockphoto.com/photos/relaxing-picture-id1133946180?k=20&m=1133946180&s=612x612&w=0&h=eZ0qO7ypDbMlDluLU6Kp9VyYa_Wt9mCerMMPqehOnSY=", product_id: 3},
  {url: "https://media.istockphoto.com/photos/two-beer-coasters-picture-id1140136024?k=20&m=1140136024&s=612x612&w=0&h=SpzTZC67jsp-k7gbxY9taOiQbfNa8Nt8JNNuYTExpuc=", product_id: 4},
  {url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvPfJu-bF8IBNi6_NsBi4mIK_WmYoQryRPEw&usqp=CAU", product_id: 4},
])
