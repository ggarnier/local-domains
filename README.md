# local-domains

Maps a list of domains to an ip address

## Usage

Create a .local-domains file in your home directory, with a list of
domains, one on each line (see .local-domains.example)

Run it with rvmsudo

    $ rvmsudo ruby local-domains.rb <ip address>

If the ip address is omitted, domains will be mapped to the first local ip
address
