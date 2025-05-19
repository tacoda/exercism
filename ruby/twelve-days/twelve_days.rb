class TwelveDays
  NUMBER_NAMES = [
    'first',
    'second',
    'third',
    'fourth',
    'fifth',
    'sixth',
    'seventh',
    'eighth',
    'ninth',
    'tenth',
    'eleventh',
    'twelfth'
  ]

  GIFTS = [
    'and a Partridge in a Pear Tree',
    'two Turtle Doves',
    'three French Hens',
    'four Calling Birds',
    'five Gold Rings',
    'six Geese-a-Laying',
    'seven Swans-a-Swimming',
    'eight Maids-a-Milking',
    'nine Ladies Dancing',
    'ten Lords-a-Leaping',
    'eleven Pipers Piping',
    'twelve Drummers Drumming'
  ]

  def self.song
    (1..12).map { |day| lyrics(day) }.join("\n\n") + "\n"
  end

  def self.lyrics(day)
    number = NUMBER_NAMES[day - 1]
    lyric = "On the #{number} day of Christmas my true love gave to me:"
    if day == 1
      lyric += ' a Partridge in a Pear Tree.'
    else
      lyric += ' ' + GIFTS[0...day].reverse.join(', ') + '.'
    end
    lyric
  end
end
