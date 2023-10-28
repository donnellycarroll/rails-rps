class ZebraController < ApplicationController
  def giraffe
    @our_move = "rock"
    @comp_move = ["rock", "paper", "scissors"].sample

    if @comp_move == "rock"
      @outcome = "tied"
    elsif @comp_move == "scissors"
      @outcome = "won"
    else
      @outcome = "lost"
    end

    render({ :template => "game_templates/play" })
  end

  def elephant
    @our_move = "paper"
    @comp_move = ["rock", "paper", "scissors"].sample

    if @comp_move == "rock"
      @outcome = "won"
    elsif @comp_move == "scissors"
    @outcome = "lost"
    else
      @outcome = "tied"
    end

    render({ :template => "game_templates/play" })
  end

  def lion
    @our_move = "scissors"
    @comp_move = ["rock", "paper", "scissors"].sample
  
  if @comp_move == "rock"
    @outcome = "lost"
  elsif @comp_move == "scissors"
  @outcome = "tied"
  else
    @outcome = "won"
  end

  render({ :template => "game_templates/play" })
  end

  def rules
    render({ :template => "game_templates/homepage" })
  end

end
