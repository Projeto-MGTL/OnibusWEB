require 'spec_helper'

describe "linhas/new" do
  before(:each) do
    assign(:linha, stub_model(Linha,
      :numero => 1,
      :nome => "MyString",
      :horario => "MyString"
    ).as_new_record)
  end

  it "renders new linha form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", linhas_path, "post" do
      assert_select "input#linha_numero[name=?]", "linha[numero]"
      assert_select "input#linha_nome[name=?]", "linha[nome]"
      assert_select "input#linha_horario[name=?]", "linha[horario]"
    end
  end
end
