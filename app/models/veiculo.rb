class Veiculo < ActiveRecord::Base
  belongs_to :empresa
  attr_accessible  :empresa_id,:chassi, :marca, :modelo, :numerocadeiras, :placa
end
