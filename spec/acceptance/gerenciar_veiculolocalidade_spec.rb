# coding: utf-8
require 'spec_helper'

feature 'gerenciar veiculolocalidade' do

  scenario 'incluir veiculolocalidade' do #, :javascript => true  do

    localidadelinha = FactoryGirl.create(:localidadelinha, :nomelocalidade => 'XXX')
    veiculolinha = FactoryGirl.create(:veiculolinha, :nomelinha => 'XXX')

    visit new_veiculolocalidade_path

    preencher_e_verificar_veiculolocalidade

    

  end

  scenario 'alterar veiculolocalidade' do #, :javascript => true  do

    localidadelinha = FactoryGirl.create(:localidadelinha, :nomelocalidade => 'XXX')
    veiculolinha = FactoryGirl.create(:veiculolinha, :nomelinha => 'XXX')

    veiculolocalidade = FactoryGirl.create(:veiculolocalidade,:localidadelinha => localidadelinha)
    veiculolocalidade = FactoryGirl.create(:veiculolocalidade,:veiculolinha => veiculolinha)

    visit edit_veiculolocalidade_path(veiculolocalidade)

    preencher_e_verificar_veiculolocalidade


  end

  scenario 'excluir veiculolocalidade' do #, :javascript => true  do

    localidadelinha = FactoryGirl.create(:localidadelinha, :nomelocalidade => 'XXX')
    veiculolinha = FactoryGirl.create(:veiculolinha, :nomelinha => 'XXX')

    veiculolocalidade = FactoryGirl.create(:veiculolocalidade,:localidadelinha => localidadelinha, :veiculolinha => veiculolinha)
    

    visit veiculolocalidades_path

    click_link 'Excluir'
    
    
  end



  def preencher_e_verificar_veiculolocalidade

    
   
    fill_in 'Placa', :with => 'KMU-1986'
    fill_in 'Data', :with => '03-09-2013'
    fill_in 'Hora', :with => '23:59'
    fill_in 'Nomelinha', :with => 'Pecuaria'
    fill_in 'Nomelocalidade', :with => 'Pecuaria'
    
    
    select 'XXX', :from => 'Veiculolinha'
    select 'XXX', :from => 'Localidadelinha'
    
    click_button 'Salvar'
    
    page.should have_content 'Placa: KMU-1986'
    page.should have_content 'Data: 03-09-2013'
    page.should have_content 'Hora: 23:59'
    
    page.should have_content 'Nomelinha: Pecuaria'
    page.should have_content 'Nomelocalidade: Pecuaria'
    
    page.should have_content 'Veiculolinha: XXX'
    page.should have_content 'Localidadelinha: XXX'
    
  end

      

end
