class SearchController < ApplicationController

  def new
    search_string = params["search"]["search"]
    Igdb.connect(api_key)
    binding.pry
    results = Igdb::Game.search(query: search_string)
  end

  private
    def api_key
      "eYc1Osx8XrmshF8tFaIWXoqQhVm4p1aYsuwjsnlEJpWFkUWztq"
    end

end
