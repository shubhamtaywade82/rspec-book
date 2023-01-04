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

describe Subscription do
  describe '#can_send_message?' do
    context 'when a user has not reached the subscription limit for the month' do
      it 'returns true' do
        subscription = Subscription.create! limit: 1
        user = User.create! subscription: subscription
        date = '2008-05-03'.to_date
        subscription.can_send_message?(user, date).should be_true
      end
    end

    context 'when a user has reached the subscription limit for the month' do
      it 'returns false'
    end
  end
end
