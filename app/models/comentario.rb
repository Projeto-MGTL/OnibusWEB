class Comentario < ActiveRecord::Base
  belongs_to :usuario
  belongs_to :linha
  attr_accessible :comentario, :data, :hora, :usuario_id, :linha_id
end
