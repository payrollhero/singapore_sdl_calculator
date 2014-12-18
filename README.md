# SingaporeSDLCalculator

`SingaporeSDLCalculator` is the gem PayrollHero.com created and use to calculate for Singapore's Skills Development Levy (SDL) contributions.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'singapore_sdl_calculator'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install singapore_sdl_calculator

## Usage

Remuneration is any wage, salary, commission, bonus, leave pay, overtime pay, allowance (e.g. housing) and other payments in cash.

```ruby
require 'singapore_sdl_calculator'

result = SingaporeSDLCalculator.calculate(remuneration: 500.50)
result # => 2.00
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/singapore_sdl_calculator/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
