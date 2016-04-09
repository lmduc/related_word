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

```ruby
RelatedWord.config do |c|
  # Set the service serving the related word
  # The services is one of [:onelook, :semantic]
  # The default service is :semantic
  c.service = :onelook

  # The timeout for each request to the service
  c.timeout = 2000
end
```

## Usage

#### RelatedWord.find
```ruby
require 'related_word'

word = 'student'
RelatedWord.new.find(word)
#=> [{:word=>"individualized", :score=>"0.258894"}, {:word=>"NUS", :score=>"0.206925"}, {:word=>"extracurricular", :score=>"0.206289"}, {:word=>"Yearbook", :score=>"0.197864"}, ...]
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/related_word. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
