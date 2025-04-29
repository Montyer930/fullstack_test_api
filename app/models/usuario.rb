class Usuario < ApplicationRecord
    self.table_name = 'usuarios'
    belongs_to :compania
end
  