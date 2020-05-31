module ApplicationHelper
  def alert_style_type(type)
    if type == 'notice'
      return 'success' 
    elsif type == 'alert'
      return 'error'
    end
  end
end
