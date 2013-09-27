class Empresa < ActiveRecord::Base
  attr_accessible :cnpj, :email, :endereco, :nome, :telefone
end
