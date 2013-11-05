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

    rvmsudo local-domains <ip address>

If the ip address is omitted, domains will be mapped to the first local ip
address

## TODO

  * tests!
  * run without rvmsudo (`sudo ...` runs as root user, doesn't find required gems)
  * better error checking
  * verbose option
  * help message
