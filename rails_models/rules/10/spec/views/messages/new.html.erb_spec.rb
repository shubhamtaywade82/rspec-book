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

describe 'messages/new.html.erb' do
  let(:message) do
    mock_model('Message').as_new_record.as_null_object
  end

  before do
    assign(:message, message)
  end

  it 'renders a form to create a message' do
    render
    rendered.should have_selector('form',
                                  method: 'post',
                                  action: messages_path) do |form|
      form.should have_selector('input', type: 'submit')
    end
  end

  it 'renders a text field for the message title' do
    message.stub(title: 'the title')
    render
    rendered.should have_selector('form') do |form|
      form.should have_selector('input',
                                type: 'text',
                                name: 'message[title]',
                                value: 'the title')
    end
  end

  it 'renders a text area for the message text' do
    message.stub(text: 'the message')
    render
    rendered.should have_selector('form') do |form|
      form.should have_selector('textarea',
                                name: 'message[text]',
                                content: 'the message')
    end
  end
end
