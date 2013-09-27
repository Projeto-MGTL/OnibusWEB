require 'spec_helper'

describe "veiculolinhas/new" do
  before(:each) do
    assign(:veiculolinha, stub_model(Veiculolinha,
      :veiculo => nil,
      :linha => nil,
      :nomelinha => "MyString",
      :placa => "MyString"
    ).as_new_record)
  end

  it "renders new veiculolinha form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", veiculolinhas_path, "post" do
      assert_select "input#veiculolinha_veiculo[name=?]", "veiculolinha[veiculo]"
      assert_select "input#veiculolinha_linha[name=?]", "veiculolinha[linha]"
      assert_select "input#veiculolinha_nomelinha[name=?]", "veiculolinha[nomelinha]"
      assert_select "input#veiculolinha_placa[name=?]", "veiculolinha[placa]"
    end
  end
end
