class Timer
  #write your code here
  attr_accessor :seconds

  def initialize(seconds = 0)
    @seconds = seconds
  end

  def time_string
    before_60_sec = '00:00:'
    before_3600_sec = '00:'
    more_than_3600_sec = ''
    
    if seconds < 60
      before_60_sec << '0' if seconds < 10
      before_60_sec << seconds.to_s
    elsif seconds >= 60 && seconds < 3600
      remainder_of_seconds = seconds % 60
      minutes = (seconds - remainder_of_seconds) / 60

      before_3600_sec << '0' if minutes < 10
      before_3600_sec << minutes.to_s
      before_3600_sec << ':'
      before_3600_sec << '0' if remainder_of_seconds < 10
      before_3600_sec << remainder_of_seconds.to_s
    else
      remainder_of_seconds = seconds % 60
      minutes = (seconds - remainder_of_seconds) / 60
      remainder_of_minutes = minutes % 60
      hours = (minutes - remainder_of_minutes) / 60

      more_than_3600_sec << '0' if hours < 10
      more_than_3600_sec << hours.to_s
      more_than_3600_sec << ':'
      more_than_3600_sec << '0' if remainder_of_minutes < 10
      more_than_3600_sec << remainder_of_minutes.to_s
      more_than_3600_sec << ':'
      more_than_3600_sec << '0' if remainder_of_seconds < 10
      more_than_3600_sec << remainder_of_seconds.to_s
    end
  end
end