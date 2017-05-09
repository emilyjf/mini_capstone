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
    flash[:success] = "Candy successfully created."
    redirect_to "/candies/#{ candy.id }"
  end

  def edit
    @candy = Candy.find(params[:id])
  end

  def update
    candy = Candy.find(params[:id])
    candy.assign_attributes(
                            name: params[:name],
                            description: params[:description],
                            price: params[:price]
                            )
  candy.save
  flash[:success] = "Candy successfully created."
  redirect_to "/candies/#{ candy.id }"
  end

    def destroy
      candy = Candy.find(params[:id])
      candy.destroy
      flash[:success] = "Candy successfully deleted."
      redirect_to "/"
    end
end
