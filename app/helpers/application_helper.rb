module ApplicationHelper


  def mmddhhmm(datetime)
    return '' if datetime.nil?
    datetime.strftime("%m/%d %H:%M")

  end
  def mmdd(datetime)
    return '' if datetime.nil?
    datetime.strftime("%m/%d")
  end
  def hhmm(datetime)
    return '' if datetime.nil?
    datetime.strftime("%H:%M")
  end
end
