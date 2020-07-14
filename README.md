# Bank Tech Test

[Original](https://github.com/makersacademy/course/blob/master/individual_challenges/bank_tech_test.md) tech test specification

## Approach

Describe your approach
Describe how you structured your code and why

## User Stories

```
As a User
So I can save my money
I would like to deposit money into my account.
```
```
As a User
So I can spend my money
I would like to withdraw money from my account.
```
```
As a User
So I have visability of my spending
I would like a message to pop up if I debit more than what is in my account.
```
```
As a User
So I can keep track of my spending
I would like a history of my latest transactions: credit and debit, with the date of each transaction.
```

## Technologies

- Programming Language: Ruby
- Testing Framework: Rspec
- Gems: Rubocop (Linting), Simplecov (Code Coverage)

## How to run 

- Fork and clone this repo to your chosen folder
- Terminal: Run ```bundle install```to install dependencies
- Terminal: Run ```rspec``` to run unit tests
- Terminal: Run ```rubocop```to run linter

- irb: Run

```
:001 > require './lib/account.rb'
 => true
:002 > account = Account.new
:003 > account.deposit(1000)
:004 > account.deposit(2000)
:005 > account.withdraw(500)
:006 > account.statement
date || credit || debit || balance
14/07/2020 ||  || 500.00 || 2500.00
14/07/2020 || 2000.00 ||  || 3000.00
14/07/2020 || 1000.00 ||  || 1000.00
```

IMAGE HERE
