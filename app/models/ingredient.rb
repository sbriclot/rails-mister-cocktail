# frozen_string_literal: true

class Ingredient < ApplicationRecord
  has_many :doses
  has_many :cocktails, through: :doses

  has_many :histories
  has_many :cocktails, through: :histories

  validates :name, presence: true, uniqueness: true
end
