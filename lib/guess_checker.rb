require_relative 'code_maker'

class GuessChecker

  def self.validate(code, guess = 'rrrr')
    if code == guess
      correct_placements = 4
      correct_colors = 4
    else
      correct_placements = validate_correct_placements(code, guess)
      correct_colors = validate_correct_colors(code, guess)
    end

    return [correct_placements, correct_colors]
  end

  def self.validate_correct_placements(code, guess)
    placements = code.chars.zip(guess.chars)
    placements = placements.select {|a, b| a == b}
    placements.length
  end

  def self.validate_correct_colors(code, guess)
    code.chars.uniq.count do |char|
      guess.include?(char)
    end
  end
end
