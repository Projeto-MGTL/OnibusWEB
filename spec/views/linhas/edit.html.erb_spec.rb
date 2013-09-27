require 'spec_helper'

describe "linhas/edit" do
  before(:each) do
    @linha = assign(:linha, stub_model(Linha,
      :numero => 1,
      :nome => "MyString",
      :horario => "MyString"
    ))
  end

  it "renders the edit linha form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", linha_path(@linha), "post" do
      assert_select "input#linha_numero[name=?]", "linha[numero]"
      assert_select "input#linha_nome[name=?]", "linha[nome]"
      assert_select "input#linha_horario[name=?]", "linha[horario]"
    end
  end
end
