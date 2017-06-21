class Applicant < ApplicationRecord
  validates :email_address, presence: true
  validates :motivation, presence: true
  validates_length_of :motivation, minimum: 3
end
