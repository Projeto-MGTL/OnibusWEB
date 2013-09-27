require 'spec_helper'

describe "empresas/show" do
  before(:each) do
    @empresa = assign(:empresa, stub_model(Empresa,
      :nome => "Nome",
      :cnpj => "Cnpj",
      :endereco => "Endereco",
      :telefone => "Telefone",
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(/Cnpj/)
    rendered.should match(/Endereco/)
    rendered.should match(/Telefone/)
    rendered.should match(/Email/)
  end
end
