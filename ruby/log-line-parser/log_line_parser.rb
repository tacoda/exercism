class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    @line.gsub(/\[[A-Z]+\]\:\s+/, '')
      .gsub(/\s+$/, '')
  end

  def log_level
    @line.gsub('[', '')
      .gsub(/\].*/, '')
      .gsub(/\s+$/, '')
      .downcase
  end

  def reformat
    "#{message} (#{log_level})"
  end
end
