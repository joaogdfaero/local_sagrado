class Local < ApplicationRecord
  validates :nome, presence: true
  validates :endereco, presence: true
  validates :religiao_denominacao, presence: true
  validates :descricao, presence: true, length: { minimum: 30, maximum: 65535 }
  validates :eventos, presence: true, length: { minimum: 30, maximum: 65535 }
  validates :contato, presence: true

  geocoded_by :endereco
  after_validation :geocode

  def self.ransackable_attributes(auth_object = nil)
    ["endereco", "religiao_denominacao"]
  end

  RELIGIOES_DENOMINACOES = [
    "Católico",
    "Evangélico",
    "Protestante",
    "Ortodoxo",
    "Anglicano",
    "Luterano",
    "Metodista",
    "Batista",
    "Pentecostal",
    "Adventista",
    "Outro"
  ].freeze
end
