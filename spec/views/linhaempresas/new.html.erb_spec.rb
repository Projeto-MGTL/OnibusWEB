require 'spec_helper'

describe "linhaempresas/new" do
  before(:each) do
    assign(:linhaempresa, stub_model(Linhaempresa,
      :nomelinha => "MyString",
      :nomeempresa => "MyString",
      :linha => nil,
      :empresa => nil
    ).as_new_record)
  end

  it "renders new linhaempresa form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", linhaempresas_path, "post" do
      assert_select "input#linhaempresa_nomelinha[name=?]", "linhaempresa[nomelinha]"
      assert_select "input#linhaempresa_nomeempresa[name=?]", "linhaempresa[nomeempresa]"
      assert_select "input#linhaempresa_linha[name=?]", "linhaempresa[linha]"
      assert_select "input#linhaempresa_empresa[name=?]", "linhaempresa[empresa]"
    end
  end
end
