require 'spec_helper'

describe "localidades/edit" do
  before(:each) do
    @localidade = assign(:localidade, stub_model(Localidade,
      :hora => "MyString",
      :data => "MyString",
      :nome => "MyString"
    ))
  end

  it "renders the edit localidade form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", localidade_path(@localidade), "post" do
      assert_select "input#localidade_hora[name=?]", "localidade[hora]"
      assert_select "input#localidade_data[name=?]", "localidade[data]"
      assert_select "input#localidade_nome[name=?]", "localidade[nome]"
    end
  end
end
