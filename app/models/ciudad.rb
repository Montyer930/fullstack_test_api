class Ciudad < ApplicationRecord
    self.table_name = 'ciudades'
    belongs_to :departamento
    has_many :companias
end
  