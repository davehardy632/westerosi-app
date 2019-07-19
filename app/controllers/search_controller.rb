class SearchController < ApplicationController

  def index
    render locals: {
      facade: WesterosiFacade.new(params["house"])
    }
  end

end
