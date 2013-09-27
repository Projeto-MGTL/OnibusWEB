class Localidadelinha < ActiveRecord::Base
  belongs_to :linha
  belongs_to :localidade
  attr_accessible :linha_id,:localidade_id,:nomelinha, :nomelocalidade
end
