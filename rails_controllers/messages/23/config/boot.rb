# frozen_string_literal: true

#---
# Excerpted from "The RSpec Book",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/achbd for more book information.
#---
require 'rubygems'

# Set up gems listed in the Gemfile.
gemfile = File.expand_path('../Gemfile', __dir__)
if File.exist?(gemfile)
  begin
    ENV['BUNDLE_GEMFILE'] = gemfile
    require 'bundler'
    Bundler.setup
  rescue Bundler::GemNotFound => e
    warn e.message
    warn 'Try running `bundle install`.'
    exit!
  end
end
