class UserItemsController < ApplicationController
  before_action :set_user_item, only: %i[ show update ]
  

  # GET /user_items/1 or /user_items/1.json
  def show
  end

  # POST /user_items or /user_items.json
  def create
    @user_item = UserItem.new(item_params)

    respond_to do |format|
      if @user_item.save
        format.html { redirect_to @user_item, notice: "Item was successfully created." }
        format.json { render :show, status: :created, location: @user_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_items/1 or /user_items/1.json
  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to @item, notice: "Item was successfully updated." }
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_item
      @user_item = UserItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_item_params
      params.require(:user_item).permit(:own_count, :willtrade, :want, :hidden)
    end
end
