require 'ghost'
require 'sys/host'

module LocalDomains
  CONFIGURATION_FILE = "#{ENV["HOME"]}/.local-domains"

  def self.setup(ip_address)
    unless File.readable?(CONFIGURATION_FILE)
      puts "File not found: #{CONFIGURATION_FILE}"
      exit 1
    end

    @ip_address = ip_address || Sys::Host.ip_addr.first

    File.readlines(CONFIGURATION_FILE).each do |domain|
      add_domain(domain.gsub(/[ \n\t]/, ""))
    end
  end

  private
  def self.add_domain(domain)
    host = Ghost::Host.new(domain, @ip_address)
    puts "adding '#{domain}' to '#{@ip_address}'"
    Ghost.store.set(host)
  end
end
