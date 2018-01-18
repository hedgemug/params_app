class ParamsExamplesController < ApplicationController

  def query_params
    input_message = params["first_message"]
    second_message = params["second_message"]
    render json: {message: "Your message is #{input_message}", second_message: "Your second message is #{second_message}"}
  end

  def my_name_method
    input_name = params["query_name"]
    output_message = "Hey, your name doesn't start with an A!"
    if input_name.upcase.starts_with?("A")
      output_message = "Hey, your name starts with an A!"
    end
    render json: {
      name: "#{input_name.upcase}",
      message: output_message
    }
  end

  def guess_game_method
    winning_number = 77
    input_guess = params["user_guess"].to_i
    if input_guess > winning_number
      output_message = "Pick lower!"
    elsif input_guess < winning_number
      output_message = "Pick higher!"
    else
      output_message = "You win!"
    end
    render json: {guess: input_guess, message: output_message}
  end

  def url_segment_params
    input_value = params["wildcard_variable"]
    render json: {message: "The url segment params is #{input_value}"}
  end


end

































