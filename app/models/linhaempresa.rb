class Linhaempresa < ActiveRecord::Base
  belongs_to :linha
  belongs_to :empresa
  attr_accessible :linha_id, :empresa_id,:nomeempresa, :nomelinha
end
