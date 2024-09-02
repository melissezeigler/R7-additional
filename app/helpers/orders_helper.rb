module OrdersHelper
  def format_order_date(date)
    date.strftime("%B %d, %Y")
  end
end
