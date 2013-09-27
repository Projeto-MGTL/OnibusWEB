class Veiculolinha < ActiveRecord::Base
  belongs_to :veiculo
  belongs_to :linha
  attr_accessible :veiculo_id,:linha_id,:nomelinha, :placa
end
