# Bangazon API | Iteration 1

Created an API using Ruby 2.4.2 and Rails 5. The purpose of the API is to allow access
to the Bangazon customer and employee database.

## Getting Started:

1. Clone repo
2. bundle install
3. Run rails db:migrate
4. Run rails db:seed for dummy data

## Prerequisites
1. bundle install to update gem file dependencies
2. postman

## Installing

1. Follow getting started steps
2. run rails server
3. test using postman with following endpoints: (may sub numbers 1-3 for endpoints with id's)
    - /customers
        - /customers/1
    - /products
        - /products/1
    - /product_types
        - /payment_types/1
    - /orders
        - /orders/1
    - /order_products
        - /order_products/1
    - /payment_types
        - /payment_types/1
    - /employees
        - /employees/1
    - /departments
        - /departments/1
    - /computers
        - /computers/1
    - /employee_computers
        - /employee_computers/1
    - /employee_training_programs
        - /employee_training_programs/1
    - /training_programs
        - /training_programs/1

## Running the tests

### CORS testing for issue #12
1. Create simple index.html

    Paste the following:
    ```<DOCTYPE!>
    <html>

    <head>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    </head>

    <body>
        <h1>Test site for bangazon api</h1>
        <script src="index.js"></script>
    </body>

    </html>
    
3. main.js with one ajax call to bangazon API

    Paste the following:
    ```
    "use strict"
    let loadInventory = () => {
        return new Promise(function (resolve, reject) {
            $.ajax({
                url: `www.bangazon.com`
            })
                .done(function (data) {
                    console.log("inventory", data);
                    resolve(data);
                })
                .fail(reject)
            console.log('it failed!');

        });
    };
    loadInventory();
    ```

4. $sudo nano vim /etc/host to run host file on mac
5. enter bangazon.com:8080 in browser to test access


## Explain how to run the automated tests for this system

  - run rails test

## Built With

 - Rails - The framework used
 - Ruby - Language used
 - SQL - database

## Authors

Malcolm Ford - Team Lead - MalcolmFord
Brooke Wittenberg - Member - brooksquil
Jim Vickery - Member - jimvickery
Adam White - Member - adamdwhite


## Acknowledgments

Thanks to Hannah's patience and quick resonses to our calls for assistance. Thanks to Nora Moser and Jordan Berghoffer for your assistance and tips.