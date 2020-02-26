class Person < ApplicationRecord
  belongs_to :user
  has_many :goods, dependent: :destroy
  has_many :pays, dependent: :destroy
  has_many :delivers, dependent: :destroy
  after_commit :invo_sub
  private
  def invo_sub
    invo_sub = 0
    invo_tax = 0
    invo_total = 0
    invo_profit = 0
    invo_margin = 0
    invo_delv = 0
    invo_dis = 0
    invo_fee = 0
    self.goods.each do |itm|
      invo_sub += itm.qnt * itm.price
    end
    invo_sub
    self.update_columns(subtotal: invo_sub)
    invo_tax = invo_sub * 10.25 / 100
    self.update_columns(tax: invo_tax)
    self.delivers.each do |delv|
      invo_delv += delv.delivery
      invo_dis += delv.discount
      invo_fee += delv.fee
    end
    invo_delv
    self.update_columns(delivery_fee: invo_delv)
    invo_dis
    self.update_columns(discount: invo_dis)
    invo_fee
    self.update_columns(fee: invo_fee)
    invo_total = invo_sub + invo_tax + invo_delv + invo_fee - invo_dis
    self.update_columns(total: invo_total)
    invo_profit = invo_total - self.cost
    self.update_columns(profit: invo_profit)
    invo_margin = (invo_profit / invo_sub * 100).round(2)
    self.update_columns(margin: invo_margin)
  end

  # after_create :inv_itms, :inv_tax, :inv_total, :inv_profit, :inv_per
  #
  # private
  #   def inv_itms
  #     inv_itms = 0
  #     self.goods.each do |itm|
  #       inv_itms += itm.qunt * itm.price
  #     end
  #     inv_itms
  #     self.update(subtotal: inv_itms)
  #   end
  #   def inv_tax
  #      inv_tax = self.subtotal * 10.25 / 100
  #     self.update(tax: inv_tax)
  #   end
  #   def inv_total
  #     inv_total = self.subtotal + self.tax
  #     self.update(total: inv_total )
  #   end
  #   def inv_profit
  #     inv_profit = self.subtotal - self.cost
  #     self.update(profit: inv_profit)
  #   end
  #   def inv_per
  #     inv_per = (self.profit / self.subtotal * 100).round(2)
  #
  #   end
end
