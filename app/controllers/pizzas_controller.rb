class PizzasController < ApplicationController
  def index
    if params[:sorted]
      @pizzas = Pizza.all.sort_by do |pizza|
        pizza.price
      end.reverse
    elsif params[:search]
      @pizzas = Pizza.all.select do |pizza|
        pizza.name.downcase.include?(params[:search].downcase)
      end
    else
      @pizzas = Pizza.all
    end
  end

  def show
    @pizza = Pizza.find(params[:id])
  end

  def new
    @pizza = Pizza.new
    @cheeses = Pizza.cheeses
    @toppings = Pizza.toppings
  end

  def create
    @pizza = Pizza.new(pizza_params)
    if @pizza.valid?
      @pizza.save
      redirect_to pizza_path(@pizza)
    else
      @cheeses = Pizza.cheeses
      @toppings = Pizza.toppings
      flash.now[:messages] = @pizza.errors.full_messages[0]
      render :new
    end
  end

  def edit
    @pizza = Pizza.find(params[:id])
    @cheeses = Pizza.cheeses
    @toppings = Pizza.toppings
  end

  def update
    @pizza = Pizza.find(params[:id])
    if @pizza.update(pizza_params)
      redirect_to pizza_path(@pizza)
    else
      @cheeses = Pizza.cheeses
      @toppings = Pizza.toppings
      flash.now[:messages] = @pizza.errors.full_messages[0]
      render :edit
    end
  end

  def delete
    @pizza = Pizza.find(params[:id])
    @pizza.waiters.each do |waiter|
      waiter.delete
    end
    @pizza.delete
    redirect_to pizzas_path
  end

  def custom
    @pizza = Pizza.new
  end

  def create_custom
    @pizza = Pizza.new(pizza_params)
    if @pizza.valid?
      @pizza.save
      redirect_to pizza_path(@pizza)
    else
      flash.now[:messages] = @pizza.errors.full_messages[0]
      render :custom
    end
  end

  private

  def pizza_params
    params.require(:pizza).permit(:name, :cheese, :sauce, :topping_one, :topping_two, :price)
  end
end
