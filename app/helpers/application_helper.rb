module ApplicationHelper
  def date_time(datetime)
    time_ago_in_words(datetime) + '前'
  end
end
