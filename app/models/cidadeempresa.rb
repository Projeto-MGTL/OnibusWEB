class Cidadeempresa < ActiveRecord::Base
  belongs_to :empresa
  belongs_to :cidade
  attr_accessible :nomecidade, :nomeempresa, :empresa_id, :cidade_id
end
