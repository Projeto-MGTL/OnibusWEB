# coding: utf-8
require 'spec_helper'

feature 'gerenciar comentario' do

  scenario 'incluir comentario' do #, :javascript => true  do

    linha = FactoryGirl.create(:linha, :nome => 'XXX')
    usuario = FactoryGirl.create(:usuario, :nome => 'XXX')

    visit new_comentario_path

    preencher_e_verificar_comentario

    

  end

  scenario 'alterar comentario' do #, :javascript => true  do

    linha = FactoryGirl.create(:linha, :nome => 'XXX')
    usuario = FactoryGirl.create(:usuario, :nome => 'XXX')

    comentario = FactoryGirl.create(:comentario,:linha => linha)
    comentario = FactoryGirl.create(:comentario,:usuario => usuario)

    visit edit_comentario_path(comentario)

    preencher_e_verificar_comentario


  end

  scenario 'excluir comentario' do #, :javascript => true  do

    linha = FactoryGirl.create(:linha, :nome => 'XXX')
    usuario = FactoryGirl.create(:usuario, :nome => 'XXX')

    comentario = FactoryGirl.create(:comentario,:linha => linha, :usuario => usuario)
    

    visit comentarios_path

    click_link 'Excluir'
    
    
  end



  def preencher_e_verificar_comentario

    select 'XXX', :from => 'linha'
    select 'XXX', :from => 'usuario'
    fill_in 'Data',  :with => "02-04-2012"
    fill_in 'Hora',  :with => "13hrs"
    fill_in 'Comentario',  :with => "Comentário "
    
    click_button 'Salvar'
    
    
    page.should have_content 'Linha: XXX'
    page.should have_content 'Usuario: XXX'
    page.should have_content 'Data: 02-04-2012'
    page.should have_content 'Hora: 13hrs'
    page.should have_content 'Comentario: Comentário '
      
    
  end

      

end
