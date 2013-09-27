require 'spec_helper'

describe "usuarios/new" do
  before(:each) do
    assign(:usuario, stub_model(Usuario,
      :nome => "MyString",
      :login => "MyString",
      :senha => "MyString",
      :email => "MyString"
    ).as_new_record)
  end

  it "renders new usuario form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", usuarios_path, "post" do
      assert_select "input#usuario_nome[name=?]", "usuario[nome]"
      assert_select "input#usuario_login[name=?]", "usuario[login]"
      assert_select "input#usuario_senha[name=?]", "usuario[senha]"
      assert_select "input#usuario_email[name=?]", "usuario[email]"
    end
  end
end
