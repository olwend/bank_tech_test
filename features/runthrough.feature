Feature: acceptance
As a client
I want to specify amount and transaction type (withdraw 500.00)
So that I can withdraw funds

As a client
I want to specify amount and transaction type (deposit 1000.00)
So that I can deposit funds

As a client
I want to view a statement (date, type of transaction, amount, balance)
So that I can track my finances

Scenario: run through bank functionality
Given a client makes a deposit of 1000 on '10-01-2012'
And a deposit of 2000 on '13-01-2012'
And a withdrawal of 500 on '14-01-2012'
When she prints a statement
Then there is screen output
