class GameController < ApplicationController
  
  def game_action
    @name = params[:name]
    if @name.downcase.starts_with?("a")
      @message = "Hey, your name starts with an 'A'!"
    end
  end

  def guess_query
    winning_number = 36
    @guess = params[:number].to_i
    if @guess > winning_number
      @message = "too high!"
    elsif @guess < winning_number
      @message = "too low!"
    else
      @message = "a WINNER WINNER of a CHICKEN DINNER!"
    end
  end

  def guess_show
    
  end
  def guess_send
    winning_number = 36
    @guess = params[:form_message].to_i
    if @guess > winning_number
      @message = "too high!"
    elsif @guess < winning_number
      @message = "too low!"
    else
      @message = "a WINNER WINNER of a CHICKEN DINNER!"
    end
  end


end
