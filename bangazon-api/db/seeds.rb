Customer.create!([
  {last_name: "Ford", first_name: "Malcolm", date_customer_created: nil, active: true, last_date_used: nil, email: "brooke.wittenberg@gmail.com", street_address: "1414 Monetta Ave", city: "Nashville", us_state: "TN", zip_code: 37216},
  {last_name: "Ford", first_name: "Malcolm", date_customer_created: nil, active: true, last_date_used: nil, email: "brooke.wittenberg@gmail.com", street_address: "1414 Monetta Ave", city: "Nashville", us_state: "TN", zip_code: 37216},
  {last_name: "Ford", first_name: "Malcolm", date_customer_created: nil, active: true, last_date_used: nil, email: "brooke.wittenberg@gmail.com", street_address: "1414 Monetta Ave", city: "Nashville", us_state: "TN", zip_code: 37216}
])

ProductType.create!([
  {product_type: "clothing"},
  {product_type: "hat"},
  {product_type: "pants"},
  {product_type: "food"}
])
PaymentType.create!([
  {payment_type: "DebtCard3000", account_number: 123456789, Customer_id: 1},
  {payment_type: "DebtCard3000", account_number: 123456789, Customer_id: 1},
  {payment_type: "DebtCard3000", account_number: 123456789, Customer_id: 1}
])

Product.create!([
  {product_title: "t-shirt", product_price: 6.99, Customer_id: 1},
  {product_title: "t-shirt", product_price: 6.99, Customer_id: 1},
  {product_title: "t-shirt", product_price: 6.99, Customer_id: 1}
])

Order.create!([
  {Customer_id: 1, Payment_Type_id: 1},
  {Customer_id: 1, Payment_Type_id: 1},
  {Customer_id: 1, Payment_Type_id: 1}
])
OrderProduct.create!([
  {product_id: 1, order_id: 1},
  {product_id: 1, order_id: 1},
  {product_id: 1, order_id: 1}
])

Computer.create!([
  {purchase_date: "2017-02-22", decomission_date: "2017-05-13"},
  {purchase_date: "2017-02-22", decomission_date: "2017-05-13"},
  {purchase_date: "2017-02-22", decomission_date: "2017-05-13"}
])
Department.create!([
  {department_name: "HR", expense_budget: 2000.0},
  {department_name: "HR", expense_budget: 2000.0},
  {department_name: "HR", expense_budget: 2000.0}
])
Employee.create!([
  {name_last: "Ford", name_first: "Malcolm", job_title: "Junior Dev", employee_hire_date: "2016-04-20", Department_id: 1},
  {name_last: "Ford", name_first: "Malcolm", job_title: "Junior Dev", employee_hire_date: "2016-04-20", Department_id: 1},
  {name_last: "Ford", name_first: "Malcolm", job_title: "Junior Dev", employee_hire_date: "2016-04-20", Department_id: 1}
])

TrainingProgram.create!([
  {start_date: "2017-04-25", end_date: "2017-03-29", subject: "customer service", max_occupancy: 28},
  {start_date: "2017-12-25", end_date: "2018-01-29", subject: "customer service", max_occupancy: 28},
  {start_date: "2017-12-25", end_date: "2018-01-29", subject: "customer service", max_occupancy: 28}
])

EmployeeTrainingProgram.create!([
  {employee_id: 1, training_program_id: 3},
  {employee_id: 1, training_program_id: 3},
  {employee_id: 1, training_program_id: 3}
])

EmployeeComputer.create!([
  {employee_id: 1, computer_id: 1},
  {employee_id: 1, computer_id: 1},
  {employee_id: 1, computer_id: 1}
])
