# coding: utf-8

require 'spec_helper'

feature 'gerenciar veiculo' do

  scenario 'incluir veiculo' do #, :javascript => true  do

    empresa = FactoryGirl.create(:empresa, :nome => 'XXX')

    visit new_veiculo_path

    preencher_e_verificar_veiculo

    

  end

  scenario 'alterar veiculo' do #, :javascript => true  do

    empresa = FactoryGirl.create(:empresa, :nome => 'XXX')

    veiculo = FactoryGirl.create(:veiculo,:empresa => empresa)

    visit edit_veiculo_path(veiculo)

    preencher_e_verificar_veiculo


  end

  scenario 'excluir veiculo' do #, :javascript => true  do

    empresa = FactoryGirl.create(:empresa, :nome => 'XXX')

    veiculo = FactoryGirl.create(:veiculo,:empresa => empresa)

    visit veiculos_path

    click_link 'Excluir'
    
    
  end



  def preencher_e_verificar_veiculo

    fill_in 'Marca',  :with => "mercedes"
    fill_in 'Modelo', :with => 'bens'
    fill_in 'Placa', :with => 'bens'
    fill_in 'Chassi', :with => 'bens'
    fill_in 'NumeroCadeiras', :with => '54'
    
   select 'XXX', :from => 'Empresa'

    
    click_button 'Salvar'
    page.should have_content 'Marca: mercedes'
    page.should have_content 'Modelo: bens'
    page.should have_content 'Placa: bens'
    page.should have_content 'Chassi: bens'
    page.should have_content 'NumeroCadeiras: 54'
    page.should have_content 'Empresa: XXX'
    
  end

      

end
