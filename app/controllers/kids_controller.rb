# frozen_string_literal: true

class KidsController < ApplicationController
  def index
    @kids = Kid.all

    render json: { kids: @kids }
  end

  def create
    @kid = Kid.create kid_params

    if @kid.errors.any?
      render @kid.errors.full_messages
    else
      render json: { kid: @kid }
    end
  end

  private

  def kid_params
    params.require(:kid).permit(:username, :description, :favorite_color, :age)
  end
end
