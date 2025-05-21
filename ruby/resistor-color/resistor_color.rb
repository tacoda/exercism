class ResistorColor
  COLORS = %w[black brown red orange yellow green blue violet grey white]

  def self.color_code(color)
    case color
    when "white" then 9
    when "grey" then 8
    when "violet" then 7
    when "blue" then 6
    when "green" then 5
    when "yellow" then 4
    when "orange" then 3
    when "red" then 2
    when "brown" then 1
    when "black" then 0
    end
  end
end
