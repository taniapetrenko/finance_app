category_1 = Category.create(name: "Product", description: "Food/water")
category_2 = Category.create(name: "Clothes", description: "Clothes shopping")
category_3 = Category.create(name: "Travel", description: "Plane/train ticket, book hotel")
category_4 = Category.create(name: "Sport", description: "Purchase of a subscription to the gym, sports clothes")
category_5 = Category.create(name: "Salary", description: "Monthly salary")
Operation.create(
  amount: 20, odate: "2023-01-01", description: "Operation of January", category_id: category_1.id,
  operation_type: :витрата
)
Operation.create(
  amount: 300, odate: "2023-01-03", description: "Operation of January", category_id: category_1.id,
  operation_type: :витрата
)
Operation.create(
  amount: 200, odate: "2023-01-01", description: "Operation of January", category_id: category_2.id,
  operation_type: :витрата
)
Operation.create(
  amount: 400, odate: "2023-01-03", description: "Operation of January", category_id: category_2.id,
  operation_type: :витрата
)
Operation.create(
  amount: 540, odate: "2023-02-04", description: "Operation of February", category_id: category_3.id,
  operation_type: :витрата
)
Operation.create(
  amount: 180, odate: "2023-02-03", description: "Operation of February", category_id: category_3.id,
  operation_type: :витрата
)
Operation.create(
  amount: 480, odate: "2023-02-01", description: "Operation of February", category_id: category_4.id,
  operation_type: :витрата
)
Operation.create(
  amount: 850, odate: "2023-02-02", description: "Operation of February", category_id: category_4.id,
  operation_type: :витрата
)
Operation.create(
  amount: 8000, odate: "2023-02-05", description: "Operation of February", category_id: category_5.id,
  operation_type: :дохід
)
Operation.create(
  amount: 6000, odate: "2023-02-25", description: "Operation of February", category_id: category_5.id,
  operation_type: :дохід
)
