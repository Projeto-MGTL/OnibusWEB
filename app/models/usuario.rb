class Usuario < ActiveRecord::Base
  attr_accessible :email, :login, :nome, :senha
end
