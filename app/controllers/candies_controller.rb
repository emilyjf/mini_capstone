class CandiesController < ApplicationController
  def candy_action
    @candy = Candy.all
    render 'candy.html.erb'
  end
end
