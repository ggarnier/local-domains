require 'ghost'
require 'sys/host'

def add_domain(domain, ip=nil)
  ip ||= Sys::Host.ip_addr.first
  host = Ghost::Host.new(domain, ip)
  puts "adding '#{domain}' to '#{ip}'"
  Ghost.store.add(host)
end

CONFIGURATION_FILE = "#{ENV["HOME"]}/.local-domains"
unless File.readable?(CONFIGURATION_FILE)
  puts "File not found: #{CONFIGURATION_FILE}"
  exit 1
end

File.readlines(CONFIGURATION_FILE).each do |domain|
  add_domain(domain.gsub(/[ \n\t]/, ""), ARGV[0])
end
