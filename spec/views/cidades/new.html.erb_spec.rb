require 'spec_helper'

describe "cidades/new" do
  before(:each) do
    assign(:cidade, stub_model(Cidade,
      :nome => "MyString",
      :uf => "MyString"
    ).as_new_record)
  end

  it "renders new cidade form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", cidades_path, "post" do
      assert_select "input#cidade_nome[name=?]", "cidade[nome]"
      assert_select "input#cidade_uf[name=?]", "cidade[uf]"
    end
  end
end
