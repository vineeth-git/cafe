class UserCart < ApplicationRecord
  belongs_to :user
  belongs_to :menu_item, class_name: "MenuItem", foreign_key: "item_id"
end
