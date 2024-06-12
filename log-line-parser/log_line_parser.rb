class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    @line.strip.split(' ').drop(1).join(' ')
  end

  def log_level
    @line.strip.split(' ').first.gsub('[', '').gsub(']', '').gsub(':', '').downcase
  end

  def reformat
    words = @line.split(' ')
    size = words.size
    message = words[0, size].drop(1).join(' ')
    "#{message} (#{log_level})"
  end
end
