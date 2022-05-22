class Carriage < ApplicationRecord
  belongs_to :train

  validates :number, :top_seats, :bottom_seats, presence: true

  scope :economy, -> { where(type: 'EconomyCarrige')}
  scope :coupe, -> { where(type: 'CoupeCarrige')}


end
