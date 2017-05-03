class CandiesController < ApplicationController
  def candy_action
    @candy = Candy.first
    render 'candy.html.erb'
  end
end
