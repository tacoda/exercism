class Tournament
  def self.tally(input)
    teams = {}
    input.each_line do |line|
      next if line.strip.empty?

      team1, team2, result = line.strip.split(";")
      teams[team1] ||= TeamStats.new(team1)
      teams[team2] ||= TeamStats.new(team2)
      case result
      when "win"
        teams[team1].record(:win)
        teams[team2].record(:loss)
      when "loss"
        teams[team1].record(:loss)
        teams[team2].record(:win)
      when "draw"
        teams[team1].record(:draw)
        teams[team2].record(:draw)
      end
    end
    header = "Team                           | MP |  W |  D |  L |  P"
    records = teams.values.sort_by do |t|
      [-t.p, t.name]
    end.map do |t|
      format("%-30s |  %d |  %d |  %d |  %d | %2d", t.name, t.mp, t.w, t.d, t.l, t.p)
    end
    ([header] + records).join("\n") + "\n"
  end
end

class TeamStats
  attr_accessor :name, :mp, :w, :d, :l, :p

  def initialize(name)
    @name = name
    @mp = @w = @d = @l = @p = 0
  end

  def record(result)
    @mp += 1
    case result
    when :win
      @w += 1
      @p += 3
    when :draw
      @d += 1
      @p += 1
    when :loss
      @l += 1
    end
  end
end
