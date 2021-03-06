# frozen_string_literal: true

class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

  has_many :histories, dependent: :destroy
  has_many :ingredients, through: :histories

  has_one_attached :photo

  validates :name, presence: true, uniqueness: true
  validates :photo, presence: true
end
