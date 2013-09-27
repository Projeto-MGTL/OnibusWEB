require 'spec_helper'

describe "empresas/edit" do
  before(:each) do
    @empresa = assign(:empresa, stub_model(Empresa,
      :nome => "MyString",
      :cnpj => "MyString",
      :endereco => "MyString",
      :telefone => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit empresa form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", empresa_path(@empresa), "post" do
      assert_select "input#empresa_nome[name=?]", "empresa[nome]"
      assert_select "input#empresa_cnpj[name=?]", "empresa[cnpj]"
      assert_select "input#empresa_endereco[name=?]", "empresa[endereco]"
      assert_select "input#empresa_telefone[name=?]", "empresa[telefone]"
      assert_select "input#empresa_email[name=?]", "empresa[email]"
    end
  end
end
