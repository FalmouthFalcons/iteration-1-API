# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20171023205358) do

  create_table "computers", force: :cascade do |t|
    t.date "purchase_date"
    t.date "decomission_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.text "last_name"
    t.text "first_name"
    t.date "date_customer_created"
    t.boolean "active"
    t.date "last_date_used"
    t.text "email"
    t.text "street_address"
    t.text "city"
    t.text "us_state"
    t.integer "zip_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departments", force: :cascade do |t|
    t.text "department_name"
    t.float "expense_budget"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employee_computers", force: :cascade do |t|
    t.integer "employee_id"
    t.integer "computer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["computer_id"], name: "index_employee_computers_on_computer_id"
    t.index ["employee_id"], name: "index_employee_computers_on_employee_id"
  end

  create_table "employee_training_programs", force: :cascade do |t|
    t.integer "employee_id"
    t.integer "training_program_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_employee_training_programs_on_employee_id"
    t.index ["training_program_id"], name: "index_employee_training_programs_on_training_program_id"
  end

  create_table "employees", force: :cascade do |t|
    t.text "name_last"
    t.text "name_first"
    t.text "job_title"
    t.date "employee_hire_date"
    t.integer "Department_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Department_id"], name: "index_employees_on_Department_id"
  end

  create_table "order_products", force: :cascade do |t|
    t.integer "product_id"
    t.integer "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_order_products_on_order_id"
    t.index ["product_id"], name: "index_order_products_on_product_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "Customer_id"
    t.integer "Payment_Type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Customer_id"], name: "index_orders_on_Customer_id"
    t.index ["Payment_Type_id"], name: "index_orders_on_Payment_Type_id"
  end

  create_table "payment_types", force: :cascade do |t|
    t.text "payment_type"
    t.integer "account_number"
    t.integer "Customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Customer_id"], name: "index_payment_types_on_Customer_id"
  end

  create_table "product_types", force: :cascade do |t|
    t.text "product_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.text "product_title"
    t.float "product_price"
    t.integer "Customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Customer_id"], name: "index_products_on_Customer_id"
  end

  create_table "training_programs", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.text "subject"
    t.integer "max_occupancy"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
