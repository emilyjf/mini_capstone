class CandiesController < ApplicationController
  before_action :authenticate_admin!, except: [:index, :show, :random]

  def index
      @cart_count = current_user.cart.count
      @candies = Candy.all
      sort_attribute = params[:sort]
      sort_order = params[:sort_order]
      discount = params[:discount]
      search_term = params[:search_term]
      category = params[:category]
      
      if category
        @candies = Category.find_by(name: category).candies
      end

      if search_term
        @candies = Candy.where(
                                  "name iLIKE ? OR description iLIKE ?", 
                                  "%#{search_term}%",
                                  "%#{search_term}%"
                                  )
      end

      if discount
        @candies = @candies.where("price < ?", discount)
      end

      if sort_attribute && sort_order
        @candies = @candies.order(sort_attribute => sort_order)
      elsif sort_attribute
        @candies = @candies.order(sort_attribute)
      end
  end

  def new
    @candy = Candy.new   
  end

  def create
    @candy = Candy.new(
                          name: params[:name],
                          description: params[:description],
                          price: params[:price],
                          supplier_id: params[:supplier][:supplier_id]
                          )
    if @candy.save
      flash[:success] = "Candy Created"
      redirect_to "/candies/#{candy.id}"
    else
      render 'new.html.erb' 
    end
  end

  def show
    @candy = Candy.find(params[:id])
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
    flash[:success] = "Candy Updated"
      redirect_to "/candies/#{candy.id}"
    else
      render 'new.html.erb'
    end
  end

  def destroy
    candy = Candy.find(params[:id])
    candy.destroy
    flash[:warning] = "Candy Destroyed"
    redirect_to "/"
  end

  def random
    candy = Candy.all.sample
    redirect_to "/candies/#{candy.id}"
  end
end

