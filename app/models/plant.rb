class Plant < ApplicationRecord
  # rails g model Plant garden:references nous donne gratos le belongs_to :garden
  belongs_to :garden

  validates :name, presence: true
end
