# Structifier

Auto-Open-Struct-Ify your ruby class!

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'structifier'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install structifier

## Usage

So, you have a class.
That class has instance methods.
_some_ of those methods return a hash.
_it might be_ nice to get that has a super-duper `OpenStruct`.
*Enter Structifier*

### Example
```ruby
class Car
  #...
  def properties
    {
      make: "Ford",
      model: "Gran Torino",
      year: 1973,
      owner: "The Dude"
    }
  end
end

car = Car.new
car.properties[:make] #Ford
car.properties.make #NoMethodError: undefined method `make' for #<Hash:0x007f8fd4a43dd0>
```

*Structify It*
### Example
```ruby
class Car
  #...
  def properties
    {
      make: "Ford",
      model: "Gran Torino",
      year: 1973,
      owner: "The Dude"
    }
  end

  def as_struct
    Structifier::Base.new(self)
  end
end

car = Car.new
car.properties[:make] #Ford
car.as_struct.properties.make #Ford
```

  
## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/thekidcoder/structifier.

