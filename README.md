# bank-tech-test

This is the bank tech test for Makers week 10. 

### Requirements

* You should be able to interact with your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

## User Stories

**User Story 1**

As a customer, 
I would like to deposit money into my account
So I can store it in the bank

**User Story 2**

As a customer,
I would like to be able to withdraw funds
So that I can spend my money

**User Story 3**

As a customer,
I would like to be able to review my bank statement
So that I can keep track of funds

### Methods from User Stories

**Deposit**
Data: 
The deposit amount
The date of deposit

**Withdrawal**
Data:
The withdrawal amount
The date of withdrawal

**Customer Account**
Data:
Running balance
Transaction history

### Additional Functionality to be 'Feature Complete'

As these weren't specifically in the spec I have not added them but additional features may include:

**Withdrawal Limit**
Ensure that the customer can't withdrawl more money than their balance/their allowance.
**Transaction ID**
Add ID to transactions for easy retrieval. Leading to...
**View specific transaction**
Allow the customer to filter transactions as needed
**View Balance**
Allow the customer to view their current balance