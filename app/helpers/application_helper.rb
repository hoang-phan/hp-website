module ApplicationHelper
  BOOTSTRAP_CLASS = {
    success: 'alert-success', 
    error: 'alert-danger', 
    alert: 'alert-warning', 
    notice: 'alert-info'
  }

  def class_for(key)
    'active' if @current_tab == key
  end

  def flash_class_for(key)
    BOOTSTRAP_CLASS[key.to_sym] || key.to_s
  end
end
