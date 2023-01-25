category_1 = Category.create(name: "product", description: "description of the product")
category_2 = Category.create(name: "other item", description: "description of the other item")
Operation.create(
  amount: 20, odate: "2023-01-01", description: "operation of january", category_id: category_1.id
)
Operation.create(
  amount: 300, odate: "2023-01-03", description: "operation of january", category_id: category_1.id
)
Operation.create(
  amount: 200, odate: "2023-01-01", description: "operation of january", category_id: category_2.id
)
Operation.create(
  amount: 400, odate: "2023-01-03", description: "operation of january", category_id: category_2.id
)
