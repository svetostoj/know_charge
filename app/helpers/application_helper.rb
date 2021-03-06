module ApplicationHelper
  
  def set_target(action)
    if action == controller_name or (action == 'charge_stations' && controller_name =~ /adapter/)
      'target'
    else
      ''
    end
  end
  
  def set_heading
    case controller_name
      when 'homes'
        'Home'
      when 'profiles'
        'My Details'
      when 'vehicles'
        'My Vehicles'
      when 'charge_stations'
        'My Charge Stations'
      when 'bookings'
        'My Bookings'
      when 'favourites'
        'My Favourites'
      when 'charge_sessions'
        'My Charge Sessions'
      when 'adapter_plugs'
        'Adapter Plugs'
      when 'adapters'
        'Adapters'
      else
        ''
    end
  end
  
  def to_days(week)
    days = %w(Su Mo Tu We Th Fr Sa)
    week.split('').map { |day| days[day.to_i] }.join(' ')
  end
  
  def came_from_url(controller)
    key = "#{controller}_rtn".to_sym
    session[key] ? session[key] : root_url
  end
  
  def left_or_right(default, opposite)
    if @charge_station && @charge_station.user != current_user
       return opposite
    end
    default
  end
end
