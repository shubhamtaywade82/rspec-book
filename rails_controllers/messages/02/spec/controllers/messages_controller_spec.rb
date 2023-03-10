# frozen_string_literal: true

#---
# Excerpted from "The RSpec Book",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/achbd for more book information.
#---
require 'spec_helper'

describe MessagesController do
  describe 'POST create' do
    it 'creates a new message' do
      Message.should_receive(:new).with('text' => 'a quick brown fox')
      post :create, message: { 'text' => 'a quick brown fox' }
    end

    it 'saves the message'
  end
end
