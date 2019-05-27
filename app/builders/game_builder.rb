class GameBuilder

  def initialize
    @game = Game.new
  end

  def self.build 
    builder = new
    builder.generate_token
    builder.generate_questions
    builder.game
  end

  def generate_token 
    @game.token = SecureRandom.urlsafe_base64(6, false);
  end

  def generate_questions
    questions = Question.order('RANDOM()').limit(10)
    questions.each_with_index do |question, index|
      GameQuestion.new(game: @game, question: question, order_number: index + 1).save
    end
  end

  def game
    @game
  end
end