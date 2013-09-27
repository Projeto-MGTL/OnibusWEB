# coding: utf-8

require 'spec_helper'

feature 'gerenciar empresa' do

  scenario 'incluir empresa' do # , :js => true  do

    visit new_empresa_path

    preencher_e_verificar_empresa

    

  end

  scenario 'alterar empresa' do #, :js => true  do

    empresa = FactoryGirl.create(:empresa)

    visit edit_empresa_path(empresa)

    preencher_e_verificar_empresa



  end

   scenario 'excluir empresa' do #, :javascript => true  do

       empresa = FactoryGirl.create(:empresa)

        visit empresas_path

        click_link 'Excluir'

    

  end
  def preencher_e_verificar_empresa

      fill_in 'Nome',  :with => "Maria"
      fill_in 'Cnpj',  :with => "144888899"
      fill_in 'Endereco',  :with => "Rua dos Passos"
      fill_in 'Telefone',  :with => "333333"
      fill_in 'Email',  :with => "maria@email"
        
 
      click_button 'Salvar'

      page.should have_content 'Nome: Maria'
      page.should have_content 'Cnpj: 144888899'
      page.should have_content 'Endereco: Rua dos Passos'
      page.should have_content 'Telefone: 333333'
      page.should have_content 'Email: maria@email'

      

   end
end
