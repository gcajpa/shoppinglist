products = Product.create([{name: "Arroz"}, {name: "Feijão"}, {name: "Macarrão"}])
list = List.create({supermarket: "Guanabara"})
list.products << products
