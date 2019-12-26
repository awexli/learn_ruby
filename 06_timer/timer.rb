class Timer
  @@seconds = 0
  @@min = 0

  def seconds
    @@seconds
  end

  def seconds=(sec = 0)
    @@seconds = sec
  end

  def time_string
    arr = ['00', ':', '00', ':', '00']
    arr = padding(@@seconds, arr)
    return arr.join("")
  end

  def padding(sec, arr)
    @@seconds = sec % 60
    @@min = sec / 60
    hour = @@min / 60
    @@min = (sec / 60) % 60

    if hour < 10
      hour = "0#{hour}"
    end

    if @@min < 10
      @@min = "0#{@@min}"
    end

    if @@seconds < 10
      @@seconds = "0#{@@seconds}"
    end

    secs = "#{@@seconds}"
    min = "#{@@min}"
    hour = "#{hour}"

    arr[0] = hour
    arr[2] = min
    arr[4] = secs
    return arr
  end
end