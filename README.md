Fruity Bat
==========

Fruity Bat is a Flappy Bird clone, made in Ruby, that was developed while
live-streaming on twitch.tv. It uses the [gosu](http://www.libgosu.org/) gem.

You can view a recording of the stream here: http://youtu.be/QtIlyU2Br3o


How To Run The Code
-------------------

First you need to have bundler installed:

```bash
gem install bundler
```

Next, install all the dependencies using bundler:

```bash
bundle install
```

Finally, you can run the code:

```bash
bundle exec ruby game.rb
```

Installing DefStruct
--------------------

It is no longer necessary to install the `defstruct` gem, because
I've copied it into this git repo directly.

If you are following the video, ignore the part where I add `gem 'defstruct'` to the `Gemfile`.
Instead, you can take the `defstruct.rb` file out of this repo, and use `require_relative 'defstruct'` to load it (see the top of `game.rb`).
