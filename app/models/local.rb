class Local < ApplicationRecord
    validates :nome, presence: true
    validates :localizacao, presence: true
    validates :religiao_denominacao, presence: true
    validates :tipo, presence: true
    validates :descricao, presence: true, length: { maximum: 65535 }
    validates :eventos, presence: true, length: { maximum: 65535 }
    validates :contato, presence: true

    def self.ransackable_attributes(auth_object = nil)
      ["localizacao"]
    end
  end
  