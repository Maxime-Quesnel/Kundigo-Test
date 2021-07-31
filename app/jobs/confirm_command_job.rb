class ConfirmCommandJob < ApplicationJob
  queue_as :default

  def perform
    @orders = Order.all

    @orders.each do |order|
      unless order.created_at + 3.minutes < DateTime.now
        @order_cancel = order
        @order_cancel.confirm = false
        @order_cancel.save
      end
    end
  end
end


