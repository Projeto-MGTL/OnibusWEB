require 'spec_helper'

describe "localidades/new" do
  before(:each) do
    assign(:localidade, stub_model(Localidade,
      :hora => "MyString",
      :data => "MyString",
      :nome => "MyString"
    ).as_new_record)
  end

  it "renders new localidade form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", localidades_path, "post" do
      assert_select "input#localidade_hora[name=?]", "localidade[hora]"
      assert_select "input#localidade_data[name=?]", "localidade[data]"
      assert_select "input#localidade_nome[name=?]", "localidade[nome]"
    end
  end
end
