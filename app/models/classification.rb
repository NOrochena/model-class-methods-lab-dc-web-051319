# frozen_string_literal: true

class Classification < ActiveRecord::Base
  has_many :boat_classifications
  has_many :boats, through: :boat_classifications

  def self.my_all
    all.distinct
  end

  def self.longest
    Boat.order(:length).last.classifications
  end
end
