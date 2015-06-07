module ListHelper

  def format_br_date date
    date.strftime("%d/%m/%Y")
  end

  def currency_format price
    number_to_currency(price, unit: "R$ ", separator: ",", delimiter: "")
  end

end
