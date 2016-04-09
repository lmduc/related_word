# RelatedWord

Get the list of related words of a specific word.

## Versions

For installations and instructions of older versions, please follow below links:
* [0.2](https://github.com/lmduc/related_word/tree/v0.2)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'related_word'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install related_word

## Config

The code for config below is optional. For Rails, you can put those code in the file `config/initializers/related_word.rb`. For the pure Ruby, you can run those code whenever you want to set the config for the gem.

```ruby
RelatedWord.config do |c|
  # Set the service serving the related word
  # The services is one of [:onelook, :semantic]
  # The default service is :semantic
  c.service = :onelook

  # The timeout for each request to the service
  # The default timeout is 2000
  c.timeout = 2000
end
```

## Usage

#### RelatedWord.find
```ruby
require 'related_word'

word = 'student'

r = RelatedWord.new # The default service is :semantic
r.find(word)
#=> [{:word=>"individualized", :score=>"0.258894"}, {:word=>"NUS", :score=>"0.206925"}, {:word=>"extracurricular", :score=>"0.206289"}, {:word=>"Yearbook", :score=>"0.197864"}, ...]


r = RelatedWord.new(:onelook) # Use the service :onelook
r.find(word)
#=> [{:word=>"academy", :score=>0}, {:word=>"grade", :score=>0}, {:word=>"seminary", :score=>0}, {:word=>"college", :score=>0}, {:word=>"graduate", :score=>0}, ...]
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/related_word. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
