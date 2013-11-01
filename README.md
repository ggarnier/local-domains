# local-domains

Maps a list of domains to an ip address

## Installation

Add this line to your application's Gemfile:

    gem install local-domains

And then execute:

    bundle install

Or install it yourself as:

    gem install local-domains

## Usage

Create a .local-domains file in your home directory, with a list of
domains, one on each line (see .local-domains.example)

Run it with rvmsudo

    rvmsudo ruby local-domains.rb <ip address>

If the ip address is omitted, domains will be mapped to the first local ip
address
