class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, length: {minimum: 1}

  validates :last_name, length: {minimum: 1}
  validates :hourly_rate, numericality: {greater_than: 40}
  validates :hourly_rate, numericality: {less_than: 200}
  validates_associated :store

end
