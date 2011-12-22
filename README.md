# Bonk

*Why is it called bonk?* __Because it's a really hard tap.__

Bonk is a gem which adds the super cool bonk method to Ruby's `Object` class.
It can be thought of as `#map` for individual objects or a really hard `#tap`.
The semantics of Bonk are identical to `[object].map{|o| ... }.first` but
without all that tedious mucking about in hyperspace.

Why would you bother using bonk?

- I dunno, I just like to avoid unnecessary temporary variables.
- Bonk came about because I wanted to take an ActiveRecord model and send
them through a reporting script I wrote that took hashes of information. I tried
to do the transformation inline but realized that what I wanted, `#map` for
`Object`, didn't exist. So I made it using ___the power of Ruby___.

## Installation

Add this line to your application's Gemfile:

    gem 'bonk'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bonk

## Usage

```ruby
Project.find(42).owner.bonk do |o|
  { :id => o.id, :name => o.realname,
    :problem => "Never updated credit card information." }
end
```

## Disclaimer

Don't trust this gem with nuclear submarine controls. I seriously conceived it
and wrote it over two train rides after a late night conversation with my none
too amused girlfriend.

## Contributing

1. File an issue explaining the semantics of your proposed extension.
1. Get it approved or make your own simple gem.
1. Fork it on [GitHub] or [BitBucket].
2. Create your feature branch.
3. Commit your changes.
4. Push to the branch.
5. Create a new Pull Request.

[GitHub]: https://github.com/nuclearsandwich/bonk
[BitBucket]: http://bitbucket.org/nuclearsandwich/bonk

