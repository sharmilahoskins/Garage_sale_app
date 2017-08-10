class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, :except => [:show, :index]
  # GET /items
  # GET /items.json

  #ajax experiment
  respond_to :html, :js

  def index
    @items = Item.all
    respond_to do |format|
    format.html
    format.json
    end
  end

  # GET /items/1
  # GET /items/1.json
  def show
    @user = current_user
    @ability = Ability.new(current_user)
    # @item = Item.new
    @sale = Sale.find(params[:sale_id])
    @item = Item.find(params[:id])
  end

  # GET /items/new
  def new
    @item = @sale.items.create(item_params)
  end

  # GET /items/1/edit
  def edit
    # @sale = Sale.find(params[:sale_id])
    @sale = Sale.find(params[:sale_id])
    @item = Item.find(params[:id])
  end

  # POST /items
  # POST /items.json
  def create
    @sale = Sale.find(params[:sale_id])
    if item_params[:item_name].empty? || item_params[:item_name].blank?
      redirect_to @sale, alert: "Item Name can't be blank."
    elsif item_params[:item_description].empty? || item_params[:item_description].blank?
      redirect_to @sale, alert: "Item description can't be blank."
    elsif item_params[:price].empty? || item_params[:price].blank?
      redirect_to @sale, alert: "Item Price can't be blank."
    elsif item_params[:image].nil? || item_params[:image].blank?
      redirect_to @sale, alert: "Item Image can't be blank."
    else
      @item = @sale.items.create(item_params)

      respond_to do |format|
        if @item.save
          format.html { redirect_to @sale, notice: 'Item was successfully created.' }
          format.json { render :show, status: :created, location: @item }
        else
          format.html { redirect_to @sale, notice: 'Item was not able to be created.'  }
          format.json { render json: @item.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
    @sale = Sale.find_by_id(@item.sale_id)
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to @sale, notice: 'Item was successfully updated.' }
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    @sale = Sale.find_by_id(@item.sale_id)
    @item.destroy
    respond_to do |format|
      format.html { redirect_to @sale, notice: 'Item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:item_name, :item_description, :price, :sale_id, :image)
    end


end
