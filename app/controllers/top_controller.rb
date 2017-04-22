class TopController < ApplicationController

  def index
    @message = Hello.hello
  end

end
