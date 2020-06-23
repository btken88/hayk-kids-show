# frozen_string_literal: true

class Kid < ApplicationRecord
  validates :username, { presence: true, uniqueness: true, length: { in: 7..25 } }
  validates :age, { presence: true, inclusion: { in: 6...15 } }
end
