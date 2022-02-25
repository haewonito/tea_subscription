## Tea Subscription Service

This is a Rails API for a tea subscription Service. It has 3 endpoints to 1. subscribe a customer to a tea subscription, 2. cancel a customer's tea subscription, and 3. view all of a customer's subscriptions.     


#### Stack
- Ruby on Rails, RSpec, PostgreSQL


# Readme Content
- [Local Setup](#local-setup)
- [Schema Diagram](#schema-diagram)
- [API Endpoints](#api-endpoints)
- [Contributor](#contributor)

# Local Setup
- Versions
  - Rails 5.2.6
  - Ruby 2.7.2
- Fork and clone this repository
- `cd` in your local repo version and run the following commands
  - To install gems:
    -  `bundle`
  - To setup database:
    - `rails db:create`
    - `rails db:migrate`
    - `rails db:seed`
- Run your own development server:
  - `rails s`
  - local server address is:  "http://localhost:3000" 

# Schema Diagram

<img width="745" alt="Screen Shot 2022-02-24 at 5 27 36 PM" src="https://user-images.githubusercontent.com/86392608/155630313-2fcb895d-3aff-402f-a44b-6ba02f3f64b6.png">


# API Endpoints

  - **View all subscription for a customer **: 
    - Request: GET '/api/v1/customers/:id/subscriptions'
    - Response:
     ```
          {
              "data": [
                  {
                      "id": "1",
                      "type": "subscriptions",
                      "attributes": {
                          "title": "Subscription1",
                          "price_per_month": null,
                          "status": "active",
                          "frequency": "biweekly",
                          "customer_id": 1,
                          "tea_id": 1
                      }
                  },
                  {
                      "id": "2",
                      "type": "subscriptions",
                      "attributes": {
                          "title": "Subscription2",
                          "price_per_month": null,
                          "status": "active",
                          "frequency": "bimonthly",
                          "customer_id": 1,
                          "tea_id": 6
                      }
                  }
              ]
          }
      ```
 - **Create a new subscription for a customer**: 
    - Request: POST '/api/v1/customers/1/subscriptions'
    - Request Parameter as JSON: title, frequency and tea_id are required.
     ```
            {
              "title": "Sencha Monthly",
              "frequency": "monthly",
              "tea_id": 1
             }
     ```
    - Response:
     ```
            {
              "data": {
                  "id": "12",
                  "type": "subscriptions",
                  "attributes": {
                      "title": "Sencha Monthly",
                      "price_per_month": "20.0",
                      "status": "active",
                      "frequency": "monthly",
                      "customer_id": 1,
                      "tea_id": 1
                  }
                }
              }
    ```
  
 - **Delete a subscription**: 
    - Request: DELETE '/api/v1/subscriptions/:id'
    - Response:
    ```
      {
        "message": "The subscription is successfully deleted"
      }
    ```

# Contributor
- Haewon Jeon      |  [Github](https://github.com/haewonito)   |   [LinkedIn](linkedin.com/in/haewonito)
