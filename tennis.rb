class Tennis
  attr_accessor :player_1, :player_2, :point_of_player_1, :point_of_player_2
  def initialize(player_1:, player_2: )
    @player_1 = player_1
    @player_2 = player_2
    @point_of_player_1 = 0
    @point_of_player_2 = 0
  end

  def get_point(name)
    if name == @player_1
      @point_of_player_1 += 1
    end

    if name == @player_2
      @point_of_player_2 += 1
    end
  end

  def score
    if @point_of_player_1 == 0 && @point_of_player_2 == 0
      return 'love all'
    end

    if @point_of_player_1 == 1 && @point_of_player_2 == 0
      return 'fifteen love'
    end

    if @point_of_player_1 == 1 && @point_of_player_2 == 1
      'fifteen all'
    end


  end

end
