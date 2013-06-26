#coding: utf-8
module ApplicationHelper

  def num_select_options( min, max)
    array = Array.new
    min.upto(max).collect{ |i| array.push( i ) } 
    array
  end

  def active_menu_selector( expect_ctl, actual_ctl )
    return 'class="active"'.html_safe if expect_ctl == actual_ctl 
    ''
  end

  def mmddhhmm(datetime)
    return '' if datetime.nil?
    datetime.strftime("%m/%d %H:%M")

  end
  def mmdd_jp(datetime)
    return '' if datetime.nil?
    datetime.strftime("%m月%d日")
  end
  def mmdd(datetime)
    return '' if datetime.nil?
    datetime.strftime("%m/%d")
  end
  def hhmm(datetime)
    return '' if datetime.nil?
    datetime.strftime("%H:%M")
  end
  def datetime_select_jp(object_name, method, options={ } ,html_options={ })
    options[:use_month_numbers] = true unless options[:use_month_numbers]
    t = datetime_select(object_name, method, options, html_options)
      t.sub!(/<\/select>(.+?)<\/select>(.+?)<\/select>(.+?)<\/select>(.+?)<\/select>/m,
        "</select>年\\1</select>月\\2</select>日<br />\\3</select>時\\4</select>分")
    t.gsub('&mdash;','').gsub(':','').html_safe
  end
end
