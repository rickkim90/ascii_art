class AscifyController < ApplicationController
  def index
  end

  def show
    @input = params[:content]
    font = params[:font]
    a = Artii::Base.new(:font => font)
    @result = a.asciify(@input)
  end
end
