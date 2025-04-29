class Departamento < ApplicationRecord
    self.table_name = 'departamentos'
    has_many :ciudades
end
  