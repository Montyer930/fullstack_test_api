class User < ApplicationRecord
  self.table_name = 'usuarios'
  has_secure_password
end
