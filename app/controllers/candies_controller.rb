class CandiesController < ApplicationController
  def index
    @candies = Candy.all
    sort_attribute = params[:sort]
    sort_order = params[:sort_order]
    discount = params[:discount]
    search_term = params[:search_term]

    if search_term 
      @candies = @candies.where(
                              "name iLIKE ? OR description iLIKE ?", 
                              "%#{search_term}%",
                              "%#{search_term}%"
                              )
    end

    if discount
      @products = @candies.where("price < ?", discount)
    end

    if sort_attribute && sort_order
      @candies = @candies.order(sort_attribute => sort_order) 
    elsif sort_attribute 
      @candies = @candies.order(sort_attribute)
    end
  

  def show
      @candy = Candy.find(params[:id])
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

    def random
      candy = Candy.all.sample
      redirect_to "/candies/#{candy.id}"
    end
end
