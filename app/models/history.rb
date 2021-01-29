# frozen_string_literal: true

class History < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
end
