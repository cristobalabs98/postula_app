class JobOffer < ApplicationRecord
    has_many :applications, class_name: 'Application', dependent: :destroy
  end
  