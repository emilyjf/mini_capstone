class CandiesController < ApplicationController
  def index
    @candies = Candy.all
  end

  def show
    candy_id = params[:id]
    @candy = Candy.find_by(id: candy_id)
  end

  def new 

  end

  def create
    candy = Candy.new(name: params[:name],
                      description: params[:description],
                      price: params[:price]
                      )
    candy.save
  end
end
