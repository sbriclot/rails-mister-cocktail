# frozen_string_literal: true

class CreateHistories < ActiveRecord::Migration[6.0]
  def change
    create_table :histories do |t|
      t.string :description
      t.string :action
      t.references :cocktail, null: false, foreign_key: true
      t.references :ingredient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
