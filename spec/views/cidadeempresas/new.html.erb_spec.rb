require 'spec_helper'

describe "cidadeempresas/new" do
  before(:each) do
    assign(:cidadeempresa, stub_model(Cidadeempresa,
      :nomecidade => "MyString",
      :nomeempresa => "MyString",
      :empresa => nil,
      :cidade => nil
    ).as_new_record)
  end

  it "renders new cidadeempresa form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", cidadeempresas_path, "post" do
      assert_select "input#cidadeempresa_nomecidade[name=?]", "cidadeempresa[nomecidade]"
      assert_select "input#cidadeempresa_nomeempresa[name=?]", "cidadeempresa[nomeempresa]"
      assert_select "input#cidadeempresa_empresa[name=?]", "cidadeempresa[empresa]"
      assert_select "input#cidadeempresa_cidade[name=?]", "cidadeempresa[cidade]"
    end
  end
end
