## Specification

### Requirements

* You should be able to interact with the your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Installation
git clone or download
irb session

### Acceptance criteria
Run ```cucumber``` on command-line to see acceptance tests.

**Given** a client makes a deposit of 1000 on 10-01-2012
**And** a deposit of 2000 on 13-01-2012
**And** a withdrawal of 500 on 14-01-2012
**When** she prints her bank statement
**Then** she would see

```
date       || credit || debit   || balance
14/01/2012 ||        || 500.00  || 2500.00
13/01/2012 || 2000.00||         || 3000.00
10/01/2012 || 1000.00||         || 1000.00
```
![Domain](https://github.com/olwend/bank_tech_test/Bank.png)

### User Stories
As a client
I want to specify amount and transaction type (withdraw 500.00)
So that I can withdraw funds

As a client
I want to specify amount and transaction type (deposit 1000.00)
So that I can deposit funds

As a client
I want to view a statement (date, type of transaction,  amount, balance)
So that I can track my finances
