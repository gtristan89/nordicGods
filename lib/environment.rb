# frozen_string_literal: true

# require_relative "nordicGod/version"

require 'pry'
require 'nokogiri'
require 'open-uri'

require_relative './nordicGod/god.rb'
require_relative './nordicGod/scraper.rb'
require_relative './nordicGod/cli.rb'

module NordicGod
  class Error < StandardError; end
  # Your code goes here...
end
