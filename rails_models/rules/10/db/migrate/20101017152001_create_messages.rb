# frozen_string_literal: true

#---
# Excerpted from "The RSpec Book",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/achbd for more book information.
#---
class CreateMessages < ActiveRecord::Migration
  def self.up
    create_table :messages do |t|
      t.string :title
      t.text :text
      t.integer :recipient_id

      t.timestamps
    end
  end

  def self.down
    drop_table :messages
  end
end
