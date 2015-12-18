# Ruby vs. JavaScript

Here are some differences between Ruby and JavaScript

* No `var` keyward when declaring variables
* No semicolons!
* Use snake_case for variable names

```ruby
my_favorite_animal = "flying squirrel"
```

* Parentheses are often optional (unless it creates an ambiguity, for instance when chaining):

```ruby
# the following line
puts('Hello, WDI!')

# is the same as:
puts 'Hello, WDI!'
```

* Use `puts` instead of `console.log` to print to the Terminal

* Use `nil` instead of `null`

You can check if something is nil using .nil?

> NOTE: Any method that ends with a ? means it will return a boolean value.

```ruby
something = "A thing"  # "A thing"
something.nil?         # false
something = nil        # nil
something.nil?         # true
```

### Ruby has String Interpolation

You can embed a Ruby expression inside of strings and the string will be expanded to include the value of the Ruby expression.

To embed a Ruby expression, use a hash sign and curly braces to wrap the expression to be interpolated.

```ruby
first_name = 'Mike'
last_name = 'Hopper'

puts "My first name is #{first_name} and my last name is #{last_name}."
```

> NOTE: You must use double-quotes for interpolated strings.

> NOTE: Single quotes are preferred when your string is not interpolated (slight performance improvement).

### Ruby has Lots of Syntactic Sugar

```ruby
puts "Enter your age: "
age = gets.chomp.to_i
puts 'You can legally drink' if age >= 21
puts 'You can legally drink' unless age < 21

[1, 2, 3].each do |n|
  puts "The number is #{n}"
end

(1..100).each do |n|
  puts "The number is #{n}"
end

[1, 2, 3].map { |n| n * n }

puts "Hello there! " * 3
```

### Ruby is a _PURE_ Object Oriented Language

* In Ruby, Everything is an Object
* This means that Ruby is a _pure_ object oriented language
* Every expression is an object!

```ruby
12.zero?                     # false
3.14159.class                # Float
3.14159.floor                # 3
3.14159.floor.class          # Fixnum
3.14159.ceil                 # 4
3.14159.round(3)             # 3.142

'Hello, WDI!'.length         # 11
'Hello, WDI!'.downcase       # "hello, wdi!"
'Hello, WDI!'.upcase         # "HELLO, WDI!"

5.times do |n|
  puts "The number is #{n}"
end
```
