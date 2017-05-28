class Psaved < ApplicationRecord
  include Virtus.model
  attribute :zipcode, Integer
  attribute :zipcode, Integer
  attribute :zipcode, Integer
  attribute :price_min, Integer
  attribute :price_max, Integer

  def self.dump(preferences)
    preferences.to_hash
  end

  def self.load(preferences)
    new(preferences)
  end

  belongs_to :user
  belongs_to :property
end
