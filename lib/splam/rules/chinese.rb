class Splam::Rules::Chinese < Splam::Rule

  def run
    score = 0
    banned_words =[ # various russian characters
      "\350\263\207",
      "\351\207\221",
      "\357",
      "\351",
      "\35"
    ]
    banned_words.each do |word|
      score += (3 * @body.scan("#{word}").size) # 1 point for every banned word
    end
    score
  end
end