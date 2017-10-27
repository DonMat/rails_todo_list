module ApplicationHelper
  def print_date(date)
    return '' unless date
    date.strftime("%d-%m-%Y")
  end
end
