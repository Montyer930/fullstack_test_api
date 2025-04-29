class Compania < ApplicationRecord
    self.table_name = 'companias'
  
    has_many :productos
    has_many :usuarios
    belongs_to :ciudad
  end
  