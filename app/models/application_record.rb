class ApplicationRecord < ActiveRecord::Base
primary_abstract_class
belongs_to :job_offer
belongs_to :user
end
