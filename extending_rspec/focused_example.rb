# frozen_string_literal: true

#---
# Excerpted from "The RSpec Book",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/achbd for more book information.
#---
RSpec.configure do |c|
  c.filter = { focus: true }
end

describe 'group' do
  it 'example 1', focus: true do
  end

  it 'example 2' do
  end
end
