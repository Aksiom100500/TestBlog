# frozen_string_literal: true

class AddReferencesToComments < ActiveRecord::Migration[5.2]
  def change
    add_reference :comments, :commentable, polymorphic: true
  end
end
