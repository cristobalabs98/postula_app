class Application < ApplicationRecord
    belongs_to :job_offer
    belongs_to :user
  
    # Asegúrate de que las validaciones no bloqueen la creación
    validates :job_offer, presence: true
    validates :user, presence: true
  end