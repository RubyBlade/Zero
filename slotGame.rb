class SlotGame
  def initialize(config)
    @reels = config[:reels]
  end

  def spin
    screen = generate_screen
    display_screen(screen)

    if check_win(screen)
      puts "Congratulations! You won!"
    else
      puts "No win this time. Try again!"
    end
  end

  private

  def generate_screen
    screen = []
    3.times { screen << @reels.map { |reel| reel.sample } }
    screen
  end

  def display_screen(screen)
    screen.each { |row| puts row.join("  ") }
  end

  def check_win(screen)
    winning_lines = [
      [screen[0][0], screen[1][1], screen[2][2]],
      [screen[0][2], screen[1][1], screen[2][0]],
      screen[0],
      screen[1],
      screen[2]
    ]

    winning_lines.any? { |line| line.uniq.length == 1 }
  end
end

config = {
  reels: [ 
    [1, 2, 3, 7, 8, 9, 4, 5, 6, 7, 8, 9, 10],
    [1, 2, 3, 9, 10, 4, 5, 6, 7, 3, 4, 5, 8, 9, 10],
    [1, 9, 10, 2, 7, 8, 9, 3, 4, 5, 6, 7, 8, 9, 10, 3, 4, 5]
  ]
}

game = SlotGame.new(config)
game.spin
