class ItemsController < ApplicationController
  def index
      @items = Item.all
 
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @items }
    end
  end
  
  def show #shows details about a selected object
    @item = Item.find(params[:id])
  end

 def new
    @item = Item.new
      respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @item }
    end
  end
  
  def edit
    @item = Item.find(params[:id])
  end

  def create
       @item = Item.new(params[:item])
       
      if @item.save
         redirect_to items_path
      else
         render action: "new"
      end
  end  

  def update
        @item = Item.find(params[:id])

    respond_to do |format|
      if @item.update_attributes(params[:bill])
        format.html { redirect_to @item, notice: 'Item was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end
  
  def destroy
    @item = Item.find(params[:id])
    @item.destroy

    respond_to do |format|
      format.html { redirect_to items_url }
    end
  end
end
