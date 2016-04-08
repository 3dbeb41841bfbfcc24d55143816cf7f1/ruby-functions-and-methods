# Ruby Functions and Methods

## Objectives
* Explain the phrase "everything is an object", including abstract things, basic data types, and objects we make up ourselves
* Write a method that takes no parameters, multiple necessary parameters, and optional parameters

## Ruby Objects

In Ruby, every data type is an object - thus Ruby is a ***pure Object Oriented Programming Language*** (and is similar to Smalltalk in this regard).

## Functions vs. Methods

Functions and methods in Ruby are similar to what we learned in JavaScript:

* ***function***: an encapsulation of a set of instructions with a name and a set of arguments that can be passed to the funcion on invocation
* ***method***: a function that belongs to an object.

## Ruby Functions

Ruby functions are defined as follows:

```ruby
def get_sum(a, b)
  a + b            # NOTE: the `return` keyword is not needed here
end
```

Compare this with JavaScript:

```javascript
function getSum(a, b) {
  return a + b;
}
```

Can you list all of the differences?

* `def` vs. `function`
* snake_case instead of camelCase for the function name
* no opening curly brace
* `end` instead of a closing curly brace
* the `return` keyword is often not needed (though it is needed if conditionally returning early from a function)
* no semicolons

### Function and Method Naming

You should always use snake_case when naming Ruby functions and methods. Also when naming a function or method that returns a boolean value, you should end the function name with a `?`:

```ruby
def drinking_age?(age)
  age >= 21
end

if (!drinking_age?(12))
  puts "You are underage."
end
if (drinking_age?(27))
  puts "Please drink responsibly."
end
```

### Optional Arguments

Ruby functions can also take optional arguments:

```ruby
def monthly_payment(amount, years = 30, rate = 0.05)
  monthly_rate = rate / 12
  num_payments = years * 12
  monthly_rate * amount / (1 - (1 + monthly_rate) ** -(num_payments))
end

monthly_payment(100000)
monthly_payment(100000, 15)
monthly_payment(100000, 15, 0.03)
```

## Ruby Hashes

Ruby provides a simple way to encapsulate a set of data variables into a structure called a `hash`. Ruby hashes are similar to simple JavaScript objects that have no methods.

```ruby
loan_terms = { amount: 15000, years: 30, rate: 0.05 }
```

Now we can use hashes as arguments to a function or method:

```ruby
def monthly_payment(loan_terms)
  monthly_rate = loan_terms[:rate] / 12
  num_payments = loan_terms[:years] * 12
  monthly_rate * loan_terms[:amount] / (1 - (1 + monthly_rate) ** -(num_payments))
end

pmt_1 = monthly_payment({ amount: 100000, years: 15, rate: 0.03 })

# We can also omit the curly braces from our hash and Ruby can still figure it out:
pmt_2 = monthly_payment( amount: 100000, years: 15, rate: 0.03 )
```

> Note that we access the encapsulated values from the hash using the syntax:

```ruby
some_hash[:key_name]
```

> We can also modify a Ruby hash value using:

```ruby
some_hash[:key_name] = 'new value'
```

The colon before the key name indicates that we are using a Ruby `symbol` as a way of specifying the hash value we want to access. Symbols are similar to Strings except they are ***immutable*** and thus can be optimized for ***performance***


> What are some advantages of using a Ruby hash to pass values to a function vs. using simple function arguments?

## Exercises

### Temp Converter
* Write a function that converts Celcius to Fahrenheit
* Write a function that converts Fahrenheit to Celcius
* See if you can call both functions and get the original temperature

```ruby
body_temp_f = 98.6
body_temp_c = convert_to_celsius(body_temp_f)
puts "The doubly converted temp is #{convert_to_fahrenheit(body_temp_c)}"
```

### FizzBuzz

Write a fizz-buzz function in Ruby. Have the function accept an argument for the max number to count up to.

### Leap Year

Do the Ruby part of the following exercise:

[Leap Year Exercise](https://github.com/ATL-WDI-Exercises/leap-year)

### Password Checker

Write a function that takes a password and verifies that it satisfies certain password rules:

[Password Checker](https://github.com/ATL-WDI-Exercises/password-checker)

### Progressive Tax

Write a function to calculate the progressive income tax based on a specified amount of income:

[Progressive Tax](https://github.com/ATL-WDI-Exercises/progressive-tax-calc)

### Elves Wrapping Presents

Calculate how much wrapping paper the elves will need:

[Elves Wrapping Presents](https://github.com/ATL-WDI-Exercises/elves-wrapping-presents)

### Reindeer Olympics

Determine which reindeer will win the Reindeer Olympics:

[Reindeer Olympics](https://github.com/ATL-WDI-Exercises/reindeer-olympics)
