class Veiculolocalidade < ActiveRecord::Base
  belongs_to :localidadelinha
  belongs_to :veiculolinha
  attr_accessible :data, :hora, :nomelinha, :nomelocalidade, :placa, :localidadelinha_id, :veiculolinha_id
end
