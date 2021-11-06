Feature: Buy products
    As a customer
    I want to buy products

Background:
    Given สินค้า "Bread" with price 20.50 exists 5 quantity
    And สินค้า "Jam" with price 80.00 exists 5 quantity
    And สินค้า "Water" with price 10.00 exists 5 quantity

Scenario: Buy one product
    When I buy "Bread" with quantity 2
    Then total should be 41.00

Scenario: Buy multiple products
    When I buy "Bread" with quantity 2
    And I buy "Jam" with quantity 1
    Then total should be 121.00

Scenario: Buy three products
    When I buy "Jam" with quantity 3
    And I buy "Bread" with quantity 2
    And I buy "Water" with quantity 1
    Then total should be 291.00

Scenario: Buy over a product quantity
    When I buy "Water" over quantity 6
    Then total should be 0

Scenario: Buy many product but have one product over quantity
    When I buy "Jam" with quantity 1
    And I buy "Water" over quantity 6
    Then total should be 80.00