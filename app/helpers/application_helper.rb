module ApplicationHelper
  def humanize_boolean(boolean)
    boolean ? 'yes' : 'no'
  end
end
