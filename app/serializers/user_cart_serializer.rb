class UserCartSerializer < ActiveModel::Serializer
  attributes :id, :item_name, :price
  def item_name
    object.menu_item.name
  end
  def price
    object.menu_item.price
  end
end
