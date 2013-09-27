require 'spec_helper'

describe "veiculolinhas/edit" do
  before(:each) do
    @veiculolinha = assign(:veiculolinha, stub_model(Veiculolinha,
      :veiculo => nil,
      :linha => nil,
      :nomelinha => "MyString",
      :placa => "MyString"
    ))
  end

  it "renders the edit veiculolinha form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", veiculolinha_path(@veiculolinha), "post" do
      assert_select "input#veiculolinha_veiculo[name=?]", "veiculolinha[veiculo]"
      assert_select "input#veiculolinha_linha[name=?]", "veiculolinha[linha]"
      assert_select "input#veiculolinha_nomelinha[name=?]", "veiculolinha[nomelinha]"
      assert_select "input#veiculolinha_placa[name=?]", "veiculolinha[placa]"
    end
  end
end
