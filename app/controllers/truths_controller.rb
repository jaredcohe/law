class TruthsController < ApplicationController
  before_filter :authenticate, :only => [:edit, :update, :destroy]

  # GET /truths
  # GET /truths.xml
  def index
    @truths = Truth.all
  end

  # GET /truths/1
  # GET /truths/1.xml
  def show
    @truth = Truth.find(params[:id])
  end

  def new
    @truth = Truth.new
  end

  # GET /truths/1/edit
  def edit
    @truth = Truth.find(params[:id])
  end

  # POST /truths
  # POST /truths.xml
  def create
    @truth = Truth.new(params[:truth])

    if @truth.save
      redirect_to(@truth, :notice => 'Truth was successfully created.')
    else
      render :action => "new"
    end
  end

  # PUT /truths/1
  # PUT /truths/1.xml
  def update
    @truth = Truth.find(params[:id])

    if @truth.update_attributes(params[:truth])
      redirect_to(@truth, :notice => 'Truth was successfully updated.')
    else
      render :action => "edit"
    end
  end

  # DELETE /truths/1
  # DELETE /truths/1.xml
  def destroy
    @truth = Truth.find(params[:id])

    if @truth.destroy
      redirect_to(truths_url)
    else
      redirect_to :back, :notice => "Delete failed"
    end
  end
end
