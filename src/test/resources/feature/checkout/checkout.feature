@screen
Feature: Checkout Functionality

  Scenario: Verify that a guest is allowed to checkout a product (CO-01)
    Given I open url "https://dev:J4g^SqXtk%3@staging.fuel-3d.com/"
    And I click on link with text "Fuel3D Store"
    And I click on link with text "Add to cart"
    And I click on input button with text "Proceed to Checkout"
    When I place an order with valid details "0"
    And I click on link with text "Calculate Deposit"
    And I click on link with text "Pay Deposit + Shipping Now"
    Then I should see an element with text "Consumer right of return and refund"
   # And I should see my transaction in TradeGecko
   # And I should see my transaction in Stripe

  Scenario: Verify that guest user is not allowed to checkout without entering his First Name (CO-25)
    Given I open url "https://dev:J4g^SqXtk%3@staging.fuel-3d.com/"
    And I click on link with text "Fuel3D Store"
    And I click on link with text "Add to cart"
    And I click on input button with text "Proceed to Checkout"
    When I place an order with valid details "1"
    And I click on link with text "Calculate Deposit"
    And I click on link with text "Pay Deposit + Shipping Now"
    And I wait 20 seconds
    And  I should see an element with text "First Name"
    And I should see an element with text " is a required field."

  Scenario: Verify that guest user is not allowed to checkout without entering his Last Name (CO-26)
    Given I open url "https://dev:J4g^SqXtk%3@staging.fuel-3d.com/"
    And I click on link with text "Fuel3D Store"
    And I click on link with text "Add to cart"
    And I click on input button with text "Proceed to Checkout"
    When I place an order with valid details "2"
    And I click on link with text "Calculate Deposit"
    And I click on link with text "Pay Deposit + Shipping Now"
    Then I should see an element with text "Last Name"
    And I should see an element with text " is a required field."

  Scenario: Verify that guest user is not allowed to checkout without entering his Address (CO-27)
    Given I open url "https://dev:J4g^SqXtk%3@staging.fuel-3d.com/"
    And I click on link with text "Fuel3D Store"
    And I click on link with text "Add to cart"
    And I click on input button with text "Proceed to Checkout"
    When I place an order with valid details "3"
    And I click on link with text "Calculate Deposit"
    And I click on link with text "Pay Deposit + Shipping Now"
    Then I should see an element with text "Address"
    And I should see an element with text " is a required field."

  Scenario: Verify that guest user is not allowed to checkout without entering his Town / City (CO-28)
    Given I open url "https://dev:J4g^SqXtk%3@staging.fuel-3d.com/"
    And I click on link with text "Fuel3D Store"
    And I click on link with text "Add to cart"
    And I click on input button with text "Proceed to Checkout"
    When I place an order with valid details "4"
    And I click on link with text "Calculate Deposit"
    And I click on link with text "Pay Deposit + Shipping Now"
    Then I should see an element with text "Town / City"
    And I should see an element with text " is a required field."

#  Scenario: Verify that guest user is not allowed to checkout without selecting any option from the State dropdown (CO-29)
#    Given I open url "https://dev:J4g^SqXtk%3@staging.fuel-3d.com/"
#    And I mouse over on element with text "Store"
#    And  I click on link with text "US & Canada Store"
#    And I click on link with text "Add to cart"
#    When I place an order with valid details "5"
#    And I click on link with text "Calculate Deposit"
#    And I click on link with text "Pay Deposit + Shipping Now"

  Scenario: Verify that guest user is not allowed to checkout without entering his Postcode (CO-30)
    Given I open url "https://dev:J4g^SqXtk%3@staging.fuel-3d.com/"
    And I click on link with text "Fuel3D Store"
    And I click on link with text "Add to cart"
    And I click on input button with text "Proceed to Checkout"
    When I place an order with valid details "6"
    And I click on link with text "Calculate Deposit"
    And I click on link with text "Pay Deposit + Shipping Now"
    And I should see an element with text " is a required field."
   #test failed (c0-31)
  Scenario: Verify that guest user is not allowed to checkout when entering an invalid Postcode (CO-31)
    Given I open url "https://dev:J4g^SqXtk%3@staging.fuel-3d.com/"
    And I click on link with text "Fuel3D Store"
    And I click on link with text "Add to cart"
    And I click on input button with text "Proceed to Checkout"
    When I place an order with valid details "7"
    And I click on link with text "Calculate Deposit"
    And I click on link with text "Pay Deposit + Shipping Now"
    Then I should see an element with text "This card number looks invalid."



#  Scenario: Verify that guest user is not allowed to checkout without selecting an option from the Province dropdown(CO-32)
#    Given I open url "https://dev:J4g^SqXtk%3@staging.fuel-3d.com/"
#    And I click on link with text "Store"
#    And I click on link with text "Add to cart"
#    And I click on input button with text "Proceed to Checkout"
#    When I place an order with valid details "8"
#    And I click on link with text "Calculate Deposit"
#    And I click on link with text "Pay Deposit + Shipping Now"#
#    Then I should see an element with text "Province"
#    And I should see an element with text " is a required field."

  Scenario: Verify that guest user is not allowed to checkout without entering an email address (CO-33)
    Given I open url "https://dev:J4g^SqXtk%3@staging.fuel-3d.com/"
    And I click on link with text "Fuel3D Store"
    And I click on link with text "Add to cart"
    And I click on input button with text "Proceed to Checkout"
    When I place an order with valid details "9"
    And I click on link with text "Calculate Deposit"
    And I click on link with text "Pay Deposit + Shipping Now"
    Then I should see an element with text "Email Address"
    And I should see an element with text " is a required field."

  Scenario: Verify that guest user is not allowed to checkout when entering an invalid email address (CO-34)
    Given I open url "https://dev:J4g^SqXtk%3@staging.fuel-3d.com/"
    And I click on link with text "Fuel3D Store"
    And I click on link with text "Add to cart"
    And I click on input button with text "Proceed to Checkout"
    When I place an order with valid details "10"
    And I click on link with text "Calculate Deposit"
    And I click on link with text "Pay Deposit + Shipping Now"
    Then I should see an element with text "Email Address"
    And I should see an element with text " is not a valid email address."

  Scenario: Verify that guest user is not allowed to checkout without entering the telephone number (CO-35)
    Given I open url "https://dev:J4g^SqXtk%3@staging.fuel-3d.com/"
    And I click on link with text "Fuel3D Store"
    And I click on link with text "Add to cart"
    And I click on input button with text "Proceed to Checkout"
    When I place an order with valid details "11"
    And I click on link with text "Calculate Deposit"
    And I click on link with text "Pay Deposit + Shipping Now"
    Then I should see an element with text "Phone"
    And I should see an element with text " is a required field."

  Scenario: Verify that guest user is not allowed to checkout when entering invalid characters in the Phone field (CO-36)
    Given I open url "https://dev:J4g^SqXtk%3@staging.fuel-3d.com/"
    And I click on link with text "Fuel3D Store"
    And I click on link with text "Add to cart"
    And I click on input button with text "Proceed to Checkout"
    When I place an order with valid details "12"
    And I click on link with text "Calculate Deposit"
    And I click on link with text "Pay Deposit + Shipping Now"
    Then I should see an element with text "Phone"
    And I should see an element with text " is not a valid phone number."

  Scenario: Verify that guest user is not allowed to checkout without entering the Account Password (CO-37)
    Given I open url "https://dev:J4g^SqXtk%3@staging.fuel-3d.com/"
    And I click on link with text "Fuel3D Store"
    And I click on link with text "Add to cart"
    And I click on input button with text "Proceed to Checkout"
    When I place an order with valid details "13"
    And I click on link with text "Calculate Deposit"
    And I click on link with text "Pay Deposit + Shipping Now"
    Then I should see an element with text "Account password"
    And I should see an element with text " is a required field."

  Scenario: Verify that guest user is not allowed to checkout without checking the Terms and Conditions checkbox (CO-38)
    Given I open url "https://dev:J4g^SqXtk%3@staging.fuel-3d.com/"
    And I click on link with text "Fuel3D Store"
    And I click on link with text "Add to cart"
    And I click on input button with text "Proceed to Checkout"
    When I place an order with valid details "14"
    And I click on link with text "Calculate Deposit"
    And I click on link with text "Pay Deposit + Shipping Now"
    Then I should see an element with text "You must accept our Terms & Conditions."

  Scenario: Verify that user is not allowed to checkout without entering the card details (CO-39)
    Given I open url "https://dev:J4g^SqXtk%3@staging.fuel-3d.com/"
    And I click on link with text "Fuel3D Store"
    And I click on link with text "Add to cart"
    And I click on input button with text "Proceed to Checkout"
    When I place an order with valid details "15"
    And I click on link with text "Calculate Deposit"
    And I click on link with text "Pay Deposit + Shipping Now"
    Then I wait 10 seconds
    Then I should see an element with text "This card number looks invalid."

  Scenario: Verify that user is not allowed to checkout without entering the Card Number (CO-40)
    Given I open url "https://dev:J4g^SqXtk%3@staging.fuel-3d.com/"
    And I click on link with text "Fuel3D Store"
    And I click on link with text "Add to cart"
    And I click on input button with text "Proceed to Checkout"
    When I place an order with valid details "16"
    And I click on link with text "Calculate Deposit"
    And I click on link with text "Pay Deposit + Shipping Now"
    Then I should see an element with text "This card number looks invalid."

  Scenario: Verify that user is not allowed to checkout with an invalid Card Number(CO-41)
    Given I open url "https://dev:J4g^SqXtk%3@staging.fuel-3d.com/"
    And I click on link with text "Fuel3D Store"
    And I click on link with text "Add to cart"
    And I click on input button with text "Proceed to Checkout"
    When I place an order with valid details "17"
    And I click on link with text "Calculate Deposit"
    And I click on link with text "Pay Deposit + Shipping Now"
    Then I should see an element with text "This card number looks invalid."

  Scenario: Verify that user is not allowed to checkout without entering the Expiry Date (CO-42)
    Given I open url "https://dev:J4g^SqXtk%3@staging.fuel-3d.com/"
    And I click on link with text "Fuel3D Store"
    And I click on link with text "Add to cart"
    And I click on input button with text "Proceed to Checkout"
    When I place an order with valid details "18"
    And I click on link with text "Calculate Deposit"
    And I click on link with text "Pay Deposit + Shipping Now"
    Then I should see an element with text "Your card's expiration year is invalid."

  Scenario: Verify that user is not allowed to checkout with an Expiry date set in the past (CO-43)
    Given I open url "https://dev:J4g^SqXtk%3@staging.fuel-3d.com/"
    And I click on link with text "Fuel3D Store"
    And I click on link with text "Add to cart"
    And I click on input button with text "Proceed to Checkout"
    When I place an order with valid details "19"
    And I click on link with text "Calculate Deposit"
    And I click on link with text "Pay Deposit + Shipping Now"
    Then I should see an element with text "Your card's expiration year is invalid."

  Scenario: Verify that user is not allowed to checkout without entering the Card Code (CO-44)
    Given I open url "https://dev:J4g^SqXtk%3@staging.fuel-3d.com/"
    And I click on link with text "Fuel3D Store"
    And I click on link with text "Add to cart"
    And I click on input button with text "Proceed to Checkout"
    When I place an order with valid details "20"
    And I click on link with text "Calculate Deposit"
    And I click on link with text "Pay Deposit + Shipping Now"
    Then I should see an element with text "Your card's security code is invalid."

  Scenario: Place an order as a guest from home page
    Given I open url "https://dev:J4g^SqXtk%3@dev.fuel-3d.com"
    And I click on link with text "Shop now"
    And I click on submit button with xpath "//button[@type='submit']"
    And I click on link with text "View Cart"
    When I click on input button with name "proceed"
#    And I click on link with text "Click here to login"
#    And I type "vescanremus30" into field with id "username"
#    And I type "123456" into field with id "password"
#    And I click on input button with name "login"
    And I type "remus" into field with id "billing_first_name"
    And I type "vescan" into field with id "billing_last_name"
    And I type "any company" into field with id "billing_company"
    And I type "any address1" into field with id "billing_address_1"
    And I type "any address2" on textarea with id "billing_address_2"
    And I type "Oxford" on textarea with id "billing_city"
    And I type "any state" into field with id "billing_state"
    And I type "ox3 8js" into field with id "billing_postcode"
    And I type "vescan_remus30+618@gmail.com" into field with id "billing_email"
    And I type "0752801666" into field with id "billing_phone"
    And I type "123456" into field with id "account_password"
    When I type "any word" on textarea with id "order_comments"
    And I type "4242424242424242" into field with id "stripe-card-number"
    And I type "1027" into field with id "stripe-card-expiry"
    And I type "1234" into field with id "stripe-card-cvc"
    And I click on terms checkbox
    When I click on link with text "Calculate Deposit"
    When I click on link with text "Pay Deposit + Shipping Now"
    Then I should see an element with text "Consumer right of return and refund"


  Scenario: Checkout out as a logged in user
    Given I open url "https://dev:J4g^SqXtk%3@dev.fuel-3d.com"
    And I click on submit button with xpath "(//a[contains(text(),'Sign in')])[2]"
    And I click on link with text "Please click here to login"
    And I type "vescanremus30" into field with id "user_login"
    And I type "123456" into field with id "user_pass"
    And I click on input button with text "Log In"
    And I mouse over on element with text "Fuel3D Store"
    And I click on link with text "Checkout"
    And I click on link with text "Return To Shop"
    And I click on link with text "Add to cart"
    And I click on link with text "View Cart"
    When I click on input button with name "proceed"
    And I type "remus" into field with id "billing_first_name"
    And I type "vescan" into field with id "billing_last_name"
    And I type "any company" into field with id "billing_company"
    And I type "any address1" into field with id "billing_address_1"
    And I type "any address2" on textarea with id "billing_address_2"
    And I type "Oxford" on textarea with id "billing_city"
    And I type "any state" into field with id "billing_state"
    And I type "ox3 8js" into field with id "billing_postcode"
    And I type "vescan.remus30@gmail.com" into field with id "billing_email"
    And I type "0752801666" into field with id "billing_phone"
    And I type "remussic" into field with id "account_password"
    When I type "any word" on textarea with id "order_comments"
    And I type "4242424242424242" into field with id "stripe-card-number"
    And I type "1027" into field with id "stripe-card-expiry"
    And I type "1234" into field with id "stripe-card-cvc"
    And I click on terms checkbox
    When I click on link with text "Calculate Deposit"
    When I click on link with text "Pay Deposit + Shipping Now"
    Then I should see an element with text "Consumer right of return and refund"

  Scenario: Checkout from US store
#    Given I open url "https://dev:J4g^SqXtk%3@dev.fuel-3d.com"
#    And I mouse over on element with text "Fuel3D Store"
#    And I click on link with text "US & Canada Store"
    Given I open url "https://dev:J4g^SqXtk%3@dev.fuel-3d.com/usa/shop/"
    And I mouse over on element with text "Store"
    And I click on link with text "Checkout"
    And I click on link with text "Return To Shop"
    And I click on link with text "Add to cart"
    And I click on link with text "View Cart"
    When I click on input button with name "proceed"
    And I click on link with text "Click here to login"
    And I type "vescanremus30" into field with id "username"
    And I type "123456" into field with id "password"
    And I click on input button with name "login"
    And I type "remus" into field with id "billing_first_name"
    And I type "vescan" into field with id "billing_last_name"
    And I type "any company" into field with id "billing_company"
    And I type "any address1" into field with id "billing_address_1"
    And I type "any address2" on textarea with id "billing_address_2"
    And I type "Oxford" on textarea with id "billing_city"
    And I type "ox3 8js" into field with id "billing_postcode"
    And I type "vescan.remus30@gmail.com" into field with id "billing_email"
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

