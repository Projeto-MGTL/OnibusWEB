# coding: utf-8

require 'spec_helper'

feature 'gerenciar usuario' do

  scenario 'incluir usuario' do # , :js => true  do

    visit new_usuario_path

    preencher_e_verificar_usuario

    

  end

  scenario 'alterar usuario' do #, :js => true  do

    usuario = FactoryGirl.create(:usuario)

    visit edit_usuario_path(usuario)

    preencher_e_verificar_usuario



  end

   scenario 'excluir usuario' do #, :javascript => true  do

       usuario = FactoryGirl.create(:usuario)

        visit usuarios_path

        click_link 'Excluir'

    

  end
  def preencher_e_verificar_usuario

      fill_in 'Nome',  :with => "Bionda"
      fill_in 'Login',  :with => "Bibi"
      fill_in 'Senha',  :with => "B1234"
      fill_in 'Email',  :with => "bionda@gmail"
        
 
      click_button 'Salvar'

      page.should have_content 'Nome: Bionda'
      page.should have_content 'Login: Bibi'
      page.should have_content 'Senha: B1234'
      page.should have_content 'Email: bionda@gmail'

      

   end
end
