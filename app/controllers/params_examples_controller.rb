class ParamsExamplesController < ApplicationController

  def query_params
    input_message = params["first_message"]
    second_message = params["second_message"]
    render json: {message: "Your message is #{input_message}", second_message: "Your second message is #{second_message}"}
  end

end
