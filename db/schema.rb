# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130927235337) do

  create_table "cidadeempresas", :force => true do |t|
    t.string   "nomecidade"
    t.string   "nomeempresa"
    t.integer  "empresa_id"
    t.integer  "cidade_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "cidadeempresas", ["cidade_id"], :name => "index_cidadeempresas_on_cidade_id"
  add_index "cidadeempresas", ["empresa_id"], :name => "index_cidadeempresas_on_empresa_id"

  create_table "cidades", :force => true do |t|
    t.string   "nome"
    t.string   "uf"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "comentarios", :force => true do |t|
    t.string   "data"
    t.string   "hora"
    t.string   "comentario"
    t.integer  "usuario_id"
    t.integer  "linha_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "comentarios", ["linha_id"], :name => "index_comentarios_on_linha_id"
  add_index "comentarios", ["usuario_id"], :name => "index_comentarios_on_usuario_id"

  create_table "empresas", :force => true do |t|
    t.string   "nome"
    t.string   "cnpj"
    t.string   "endereco"
    t.string   "telefone"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "linhaempresas", :force => true do |t|
    t.string   "nomelinha"
    t.string   "nomeempresa"
    t.integer  "linha_id"
    t.integer  "empresa_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "linhaempresas", ["empresa_id"], :name => "index_linhaempresas_on_empresa_id"
  add_index "linhaempresas", ["linha_id"], :name => "index_linhaempresas_on_linha_id"

  create_table "linhas", :force => true do |t|
    t.integer  "numero"
    t.string   "nome"
    t.string   "horario"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "localidadelinhas", :force => true do |t|
    t.string   "nomelocalidade"
    t.string   "nomelinha"
    t.integer  "linha_id"
    t.integer  "localidade_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "localidadelinhas", ["linha_id"], :name => "index_localidadelinhas_on_linha_id"
  add_index "localidadelinhas", ["localidade_id"], :name => "index_localidadelinhas_on_localidade_id"

  create_table "localidades", :force => true do |t|
    t.string   "hora"
    t.string   "data"
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "role"
    t.integer  "roles_mask"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "usuarios", :force => true do |t|
    t.string   "name"
    t.string   "sobrenome"
    t.string   "picture"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "veiculolinhas", :force => true do |t|
    t.integer  "veiculo_id"
    t.integer  "linha_id"
    t.string   "nomelinha"
    t.string   "placa"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "veiculolinhas", ["linha_id"], :name => "index_veiculolinhas_on_linha_id"
  add_index "veiculolinhas", ["veiculo_id"], :name => "index_veiculolinhas_on_veiculo_id"

  create_table "veiculolocalidades", :force => true do |t|
    t.string   "placa"
    t.string   "data"
    t.string   "hora"
    t.string   "nomelinha"
    t.string   "nomelocalidade"
    t.integer  "localidadelinha_id"
    t.integer  "veiculolinha_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "veiculolocalidades", ["localidadelinha_id"], :name => "index_veiculolocalidades_on_localidadelinha_id"
  add_index "veiculolocalidades", ["veiculolinha_id"], :name => "index_veiculolocalidades_on_veiculolinha_id"

  create_table "veiculos", :force => true do |t|
    t.string   "marca"
    t.string   "modelo"
    t.string   "placa"
    t.string   "chassi"
    t.integer  "numerocadeiras"
    t.integer  "empresa_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "veiculos", ["empresa_id"], :name => "index_veiculos_on_empresa_id"

end
