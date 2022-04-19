class Order < ApplicationRecord
  # enum の定義
  enum payment_method: { credit_card: 0, transfer: 1 }
end
