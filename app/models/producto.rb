class Producto < ApplicationRecord
    self.table_name = 'productos'
    belongs_to :compania
end
  