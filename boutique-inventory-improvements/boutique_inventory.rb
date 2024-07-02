require 'ostruct'

class BoutiqueInventory
  attr_reader :items

  def initialize(items)
    new_items = []
    items.each do |item|
      new_items << OpenStruct.new(item)
    end
    @items = new_items
  end

  def item_names
    @items.map(&:name).sort
  end

  def total_stock
    @items.sum do |item|
      item[:quantity_by_size].values.sum
    end
  end
end
