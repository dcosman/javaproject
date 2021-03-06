@screen
Feature: My account functionality

  Scenario: My account loggin succesful
    Given I open url "https://dev:J4g^SqXtk%3@dev.fuel-3d.com/usa/shop/"
    And I mouse over on element with text "Store"
    And I click on link with text "My Account"
    And I type "vescanremus30" into field with name "username"
    And I type "123456" into field with id "password"
    And I click on input button with text "Login" 
    Then I should see an element with text "Sign out"
    
  Scenario: Login failed because of wrong username or email address
    Given I open url "https://dev:J4g^SqXtk%3@dev.fuel-3d.com/usa/shop/"
    And I mouse over on element with text "Store"
    And I click on link with text "My Account"
    And I type "wrong username" into field with name "username"
    And I type "wrong password" into field with id "password"
    And I click on input button with text "Login"
    And I wait 30 seconds

  Scenario: Login failed because of wrong password
    Given I open url "https://dev:J4g^SqXtk%3@dev.fuel-3d.com/usa/shop/"
    And I mouse over on element with text "Store"
    And I click on link with text "My Account"
    And I type "vescanremus30" into field with name "username"
    And I type "wrong password" into field with id "password"
    And I click on input button with text "Login"
    And I wait 30 seconds

  Scenario: Login failed because of wrong username
    Given I open url "https://dev:J4g^SqXtk%3@dev.fuel-3d.com/usa/shop/"
    And I mouse over on element with text "Store"
    And I click on link with text "My Account"
    And I type "wrong username" into field with name "username"
    And I type "123456" into field with id "password"
    And I click on input button with text "Login"
    And I wait 30 seconds

  Scenario: Login failed because the user leaves empty mandatory fields
    Given I open url "https://dev:J4g^SqXtk%3@dev.fuel-3d.com/usa/shop/"
    And I mouse over on element with text "Store"
    And I click on link with text "My Account"
    And I click on input button with text "Login"
    Then I should see an element with text " Username is required."


  Scenario: Back to Main Site from my account
    Given I open url "https://dev:J4g^SqXtk%3@dev.fuel-3d.com/usa/shop/"
    And I mouse over on element with text "Store"
    And I click on link with text "My Account"
    And I type "vescanremus30" into field with name "username"
    And I type "123456" into field with id "password"
    And I click on input button with text "Login"
    And I click on link with text "Back to Main Site"
    Then I should see an element with text "Shop now"


  Scenario: My account and checkout
    Given I open url "https://dev:J4g^SqXtk%3@dev.fuel-3d.com/usa/shop/"
    And I mouse over on element with text "Store"
    And I click on link with text "My Account"
    And I type "vescanremus30" into field with name "username"
    And I type "123456" into field with id "password"
    And I click on input button with text "Login"
    And I mouse over on element with text "Store"
    And I click on link with text "Checkout"
    And I click on link with text "Return To Shop"
    And I click on link with text "Add to cart"
    And I click on link with text "View Cart"
    And I click on input button with text "Proceed to Checkout"
    And I type "remus" into field with id "billing_first_name"
    And I type "vescan" into field with id "billing_last_name"
    And I type "any company" into field with id "billing_company"
    And I type "any address1" into field with id "billing_address_1"
    And I type "any address2" on textarea with id "billing_address_2"
    And I type "Oxford" on textarea with id "billing_city"
    And I type "any state" into field with id "billing_state"
    And I type "ox3 8js" into field with id "billing_postcode"
    And I type "vescan.remus30+4@gmail.com" into field with id "billing_email"
    And I type "0752801666" into field with id "billing_phone"
    And I type "remussic" into field with id "account_password"
    When I type "any word" on textarea with id "order_comments"
    And I type "4242424242424242" into field with id "stripe-card-number"
    And I type "1027" into field with id "stripe-card-expiry"
    And I type "1234" into field with id "stripe-card-cvc"
    And I click on terms checkbox
    When I click on link with text "Calculate Deposit"
    When I click on link with text "Pay Deposit Now"
    And I wait 50 seconds

  Scenario: Checkout from my account cart
    Given I open url "https://dev:J4g^SqXtk%3@dev.fuel-3d.com/usa/shop/"
    And I mouse over on element with text "Store"
    And I click on link with text "My Account"
    And I type "vescanremus30" into field with name "username"
    And I type "123456" into field with id "password"
    And I click on input button with text "Login"
    And I mouse over on element with text "Store"
    And I click on link with text "Cart"
    And I click on link with text "Return To Shop"
    And I click on link with text "Add to cart"
    And I click on link with text "View Cart"
    And I click on input button with text "Proceed to Checkout"
    And I type "remus" into field with id "billing_first_name"
    And I type "vescan" into field with id "billing_last_name"
    And I type "any company" into field with id "billing_company"
    And I type "any address1" into field with id "billing_address_1"
    And I type "any address2" on textarea with id "billing_address_2"
    And I type "Oxford" on textarea with id "billing_city"
    And I type "any state" into field with id "billing_state"
    And I type "ox3 8js" into field with id "billing_postcode"
    And I type "vescan.remus30+4@gmail.com" into field with id "billing_email"
    And I type "0752801666" into field with id "billing_phone"
    And I type "remussic" into field with id "account_password"
    When I type "any word" on textarea with id "order_comments"
    And I type "4242424242424242" into field with id "stripe-card-number"
    And I type "1027" into field with id "stripe-card-expiry"
    And I type "1234" into field with id "stripe-card-cvc"
    And I click on terms checkbox
    When I click on link with text "Calculate Deposit"
    When I click on link with text "Pay Deposit Now"
    And I wait 30 seconds
