class WelcomeController < ApplicationController
  def index
  end

  def some_json_data
    respond_to do |format|
      format.json { render json: generate_json_data }
    end
  end

  private

  def generate_json_data
    chair = Item.new(1, 'chair', 4)
  end

end
