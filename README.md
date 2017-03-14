# Leapfrog

A Ruby API client library.

### Installation

Add this line to your application's Gemfile:

```ruby
gem 'leapfrog'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install leapfrog


### Usage

Require the gem.
```ruby
require 'leapfrog'
```

Create a new user and pass in the user's name, income, zipcode, and age:
```ruby
kermit = Leapfrog::User.new("Kermit", 50000, "60201", 35)
```

Call the "get_ranking" method and pass in the url of the ranking to obtain the user's ranking. Example:
```ruby
kermit.get_score(http://not_real.com/customer_scoring)
```

The response will be a Hash with two keys containing the propensity and ranking for that user:
```ruby
{"propensity"=>"0.26532", "ranking"=>"C"}
```


### Testing

After cloning this repo, run `rspec`, or `rake` to run the tests.



### License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

