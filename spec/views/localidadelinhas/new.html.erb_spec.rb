require 'spec_helper'

describe "localidadelinhas/new" do
  before(:each) do
    assign(:localidadelinha, stub_model(Localidadelinha,
      :nomelocalidade => "MyString",
      :nomelinha => "MyString",
      :linha => nil,
      :localidade => nil
    ).as_new_record)
  end

  it "renders new localidadelinha form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", localidadelinhas_path, "post" do
      assert_select "input#localidadelinha_nomelocalidade[name=?]", "localidadelinha[nomelocalidade]"
      assert_select "input#localidadelinha_nomelinha[name=?]", "localidadelinha[nomelinha]"
      assert_select "input#localidadelinha_linha[name=?]", "localidadelinha[linha]"
      assert_select "input#localidadelinha_localidade[name=?]", "localidadelinha[localidade]"
    end
  end
end
