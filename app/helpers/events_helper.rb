module EventsHelper
  def events_exist_at?( events, day )
    events.select{ |d| day.to_date ==  d.from_date.to_date }.present?
  end

  def has_event_class( events, day )
    if events_exist_at?( events, day )
      "has_event"
    else
      ""
    end
  end
end
