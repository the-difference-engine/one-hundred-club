module EventsHelper
  def format_datetime_updates(un_formatted_datetime)
    year = un_formatted_datetime["datetime(1i)"]
    month = un_formatted_datetime["datetime(2i)"]
    day = un_formatted_datetime["datetime(3i)"]
    hour = un_formatted_datetime["datetime(4i)"]
    minute = un_formatted_datetime["datetime(5i)"]
    formatted_datetime = "#{year}-#{month}-#{day} [#{hour}:#{minute}]"
    return formatted_datetime
  end

  def format_datetime_new(un_formatted_datetime)
    year = un_formatted_datetime["(1i)"]
    month = un_formatted_datetime["(2i)"]
    day = un_formatted_datetime["(3i)"]
    hour = un_formatted_datetime["(4i)"]
    minute = un_formatted_datetime["(5i)"]
    formatted_datetime = "#{year}-#{month}-#{day} [#{hour}:#{minute}]"
    return formatted_datetime
  end

 
end
