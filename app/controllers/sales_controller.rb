class SalesController < ApplicationController
  before_action :set_sale, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, :except => [:show, :index, :mysales]

  #ajax experiment
  respond_to :html, :js

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
  # if it's a city (a string), to_i will make it evaluate to 0
      zip_city_var = @zip_or_city.to_i

      if zip_city_var == 0

        @sales = Sale.where('lower(city) = ?', @zip_or_city.downcase)
        # @sales = Sale.where('lower(city) = ?', @zip_or_city.downcase).paginate(:page => params[:page], :per_page => 10)
      else
        @sales = Sale.where(zip: @zip_or_city)
      # @sales = Sale.where(zip: @zip_or_city).paginate(:page => params[:page], :per_page => 10)

      end

    end





  #   zip_city_var = @zip_or_city.to_i
# declare an array to hold items in area of search
    @items_within_search = []
    @sales_within_search = []

    #if there was an item put in the search box:
      if !(params[:item].nil? || params[:item].empty?)
    #save the item to be used later
        @item =  params[:item]
    #find all items of that kind in the total database
        @item_search_results = Item.basic_search( {item_name: params[:item], item_description: params[:item]}, false)
    #if search was by city, select the items that are in the city
        if zip_city_var == 0
          @item_search_results.each do |item|
          #add downcase to fix search problem
            if item.sale.city.downcase == @zip_or_city.downcase
              @items_within_search.push(item)
            end #end if
          end #end do
    #if search was by zip, select the items that are in the zip
        else
          @item_search_results.each do |item|
            if item.sale.zip == @zip_or_city
            @items_within_search.push(item)
            end #end if
          end #end do

        end #end if-else
    #if item search box was empty, return no items
      else
        @items =  []
      end


 #if there was an item put in the search box:
      if !(params[:item].nil? || params[:item].empty?)
    #save the item to be used later
        @item =  params[:item]
    #find all items of that kind in the total database
        @sales_search_results = Sale.basic_search( description: params[:item])
    #if search was by city, select the items that are in the city
        if zip_city_var == 0
          @sales_search_results.each do |sale|
          #add downcase to fix search problem
            if sale.city.downcase == @zip_or_city.downcase
              @sales_within_search.push(sale)
            end #end if
          end #end do
    #if search was by zip, select the items that are in the zip
        else
          @sales_search_results.each do |sale|
            if sale.zip == @zip_or_city
            @sales_within_search.push(sale)
            end #end if
          end #end do

        end #end if-else
    #if item search box was empty, return no items
      else
        @items =  []
      end




#if user doesn't choose a city or zip, show ALL items, everywhere
      if @zip_or_city.nil?
        @items_within_search = Item.basic_search( item_name: params[:item])
        @sales_within_search = Sale.basic_search( description: params[:item])
      end

      respond_to do |format|
        format.html { render '/sales/index.html' }
        format.json { render json: @sales }
      end #do
  end #index method


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
    @sale.address = @sale.street + ', ' + @sale.city + ', ' + @sale.state
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


  def update
    sale_params[:id] = @sale.id
    @sale.street = sale_params[:street]
    @sale.city = sale_params[:city]
    @sale.state = sale_params[:state]
    @sale.zip = sale_params[:zip]
    @user = current_user
    @sale.address = @sale.street + ', ' + @sale.city + ', ' + @sale.state
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
      params.require(:sale).permit(:street, :city, :state, :zip, :date, :time, :description, :user_id, :latitude, :longitude, :address)
    end
end
