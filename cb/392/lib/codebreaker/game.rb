# frozen_string_literal: true

#---
# Excerpted from "The RSpec Book",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/achbd for more book information.
#---
module Codebreaker
  class Game
    def initialize(output)
      @output = output
    end

    def start(secret)
      @secret = secret
      @output.puts 'Welcome to Codebreaker!'
      @output.puts 'Enter guess:'
    end

    def guess(guess)
      number_match_count = 0
      4.times do |index|
        number_match_count += 1 if number_match?(guess, index)
      end
      @output.puts '+' * exact_match_count + '-' * number_match_count
    end

    def exact_match_count
      exact_match_count = 0
      4.times do |index|
        exact_match_count += 1 if exact_match?(guess, index)
      end
      exact_match_count
    end

    def exact_match?(guess, index)
      guess[index] == @secret[index]
    end

    def number_match?(guess, index)
      @secret.include?(guess[index]) && !exact_match?(guess, index)
    end
  end
end
