require_relative "test_helper"

class HomeTest < AcceptanceTestSetup
    let(:destaque) { DestaquePage.new }

  def metodo_que_nao_sera_executado
    sleep 2
  end

  def test_acesso_destaques
    visit('/')
    sleep 4
    destaque.load
    assert_equal(1,1)
  end
end