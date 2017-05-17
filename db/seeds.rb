# Supplier.create!([
#   {name: "Haribo", email: "haribo@gmail.com", phone: "111-222-3333"},
#   {name: "Russell Stover", email: "rs@gmail.com", phone: "222-333-4444"},
#   {name: "Reeses", email: "reeses@gmail.com", phone: "333-444-5555"}
# ])
# Candy.create!([
#   {name: "gummy bears", price: "2.0", description: "fruity and chewy", supplier_id: 3},
#   {name: "chocolate", price: "3.0", description: "chocolate bars", supplier_id: 3},
#   {name: "chocolate-covered marshmallows", price: "1.0", description: "chocolaty and fluffy", supplier_id: 3},
#   {name: "chocolate peanut butter cups", price: "1.0", description: "sweet, salty, and peanut butter-y", supplier_id: 3},
#   {name: "runts", price: "2.0", description: "fruity", supplier_id: 2},
#   {name: "gumballs", price: "3.0", description: "chewy", supplier_id: 3}
# ])

Image.create!([
  {
    url: "https://cdn-jpg.thedailymeal.net/sites/default/files/story/Main_gummybears-istock-thinkstock.jpg",
    name: "gummy_bears",
    candy_id: 1
  },{
    url: "https://www.sciencenewsforstudents.org/sites/default/files/2016/11/main/articles/860_main_milkchocolate.png",
    name: "chocolate_bars",
    candy_id: 2
  },{
    url: "http://www.dbchocolate.com/assets/images/marshmallowmilk2014.jpg",
    name: "chocolate_covered_marshmallows",
    candy_id: 3
  },{
    url: "http://www.thecomfortofcooking.com/wp-content/uploads/2014/01/HomemadeReesesPeanutButterCups-11.jpg",
    name: "peanut_butter_cups",
    candy_id: 4
  },{
    url: "http://www.lovethispic.com/uploaded_images/131721-Runts.jpg",
    name: "runts",
    candy_id: 5
  },{
    url: "https://triviahappy.com/wp-content/uploads/2014/08/gumballs.jpg",
    name: "gumballs",
    candy_id: 6
  }
  ])
