class SalesController < ApplicationController
  before_action :set_sale, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, :except => [:show, :index, :mysales]

  load_and_authorize_resource

  # GET /sales
  # GET /sales.json
  def index
    @user = current_user




#find the completed sales from the past and delete them from the database
    @finished = Sale.where('date < ?', DateTime.now)
    @finished.destroy_all

    @ability = Ability.new(current_user)



#find the sales based on zip code or city

    if params[:search].nil? || params[:search].empty?
      @sales = Sale.all
    else

      @zip_or_city = params[:search]
      @searched = "true"
      zip_city_var = @zip_or_city.to_i

      if zip_city_var == 0 
        @sales = Sale.where(city: @zip_or_city)
        # @sales = Sale.basic_search(params[:search])
      else
        @sales = Sale.where(zip: @zip_or_city)
      end
      
    end

# if it's a city (a string), to_i will make it evaluate to 0
     zip_city_var = @zip_or_city.to_i
# declare an array to hold items in area of search
     @items_within_search = []


      if !(params[:item].nil? || params[:item].empty?)
        # @search_results = Item.basic_search( item_name: params[:item])

        @item_search_results = Item.basic_search( item_name: params[:item])
        

        if zip_city_var == 0 
          @item_search_results.each do |item|

  #add downcase to fix search problem
            if item.sale.city.downcase == @zip_or_city.downcase

              @items_within_search.push(item)
            end
          end

        else
          @item_search_results.each do |item|
            if item.sale.zip == @zip_or_city
              @items_within_search.push(item)
            end
          end
        end 

      else
        @items =  []
      end

      respond_to do |format|
        format.html { render '/sales/index.html' }
        format.json { render json: @sales }
      end
  end




  def mysales
    @user = current_user

    #find the completed sales from the past and delete them from the database
    @finished = Sale.where('date < ?', DateTime.now)
    @finished.destroy_all

    #show only the future sales
    @sales = Sale.where(:user_id => @user.id )

  end

  # GET /sales/1
  # GET /sales/1.json
  def show
    @ability = Ability.new(current_user)
    @user = current_user
  end

  # GET /sales/new
  def new
    @sale = Sale.new
    @user = current_user
  end

  # GET /sales/1/edit
  def edit
    @user = current_user
  end

  # POST /sales
  # POST /sales.json
  def create
    @sale = Sale.new(sale_params)
    @user = current_user

    respond_to do |format|
      if @sale.save
        format.html { redirect_to @sale, notice: 'Sale was successfully created.' }
        format.json { render :show, status: :created, location: @sale }
      else
        format.html { render :new }
        format.json { render json: @sale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sales/1
  # PATCH/PUT /sales/1.json
  def update
    @user = current_user
    respond_to do |format|
      if @sale.update(sale_params)
        format.html { redirect_to @sale, notice: 'Sale was successfully updated.' }
        format.json { render :show, status: :ok, location: @sale }
      else
        format.html { render :edit }
        format.json { render json: @sale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sales/1
  # DELETE /sales/1.json
  def destroy
    @user = current_user
    @sale.destroy
    respond_to do |format|
      format.html { redirect_to sales_url, notice: 'Sale was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sale
      @sale = Sale.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sale_params
      params.require(:sale).permit(:street, :city, :state, :zip, :date, :time, :description, :user_id)
    end
end
