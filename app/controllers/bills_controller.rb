class BillsController < ApplicationController
 @bills = Bill.find(:all, :include => :items)
  def index
      @bills = Bill.all
      
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bills }
    end
  end
  
  def show #shows details about a selected object is edit also
    @bill = Bill.find(params[:id])
  end

 def new
    @bill = Bill.new
    @item = @bill.items.build
    
      respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bill }
    end
  end

  def create
       @bill = Bill.new(params[:bill])
       
      if @bill.save
         redirect_to bills_path
      else
         render action :new
      end
  end  

  def update
        @bill = Bill.find(params[:id])

    respond_to do |format|
      if @bill.update_attributes(params[:bill])
        format.html { redirect_to @bill, notice: 'Bill was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end
  
  def destroy
    @bill = Bill.find(params[:id])
    @bill.destroy
    
    respond_to do |format|
      format.html { redirect_to bills_url }
    end
  end
end
