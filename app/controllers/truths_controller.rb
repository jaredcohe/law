class TruthsController < ApplicationController
  before_filter :authenticate, :only => [:edit, :update, :destroy]

  def index
    @truths = Truth.all :order => 'votes DESC'
    @truth = Truth.new
  end

  def show
    @truth = Truth.find(params[:id])
  end

  def new
    @truth = Truth.new
  end

  def edit
    @truth = Truth.find(params[:id])
  end

  def create
    @truth = Truth.new(params[:truth])
    @truth.votes = 0

    recaptcha = verify_recaptcha

    if recaptcha && @truth.save
      redirect_to :root, :notice => 'Truth was successfully created.'
    elsif @truth.title.nil? || @truth.title == ""
      redirect_to :back, :notice => 'Truth must have title.'
    elsif @truth.body.nil? || @truth.body == ""
      redirect_to :back, :notice => 'Truth cannot be blank.'
    elsif !recaptcha
      @title_persist = @truth.title
      @body_persist = @truth.body
      redirect_to :back, :notice => 'Please try again, human verification failed.'
    else
      redirect_to :back, :notice => 'Please try again.'
    end
  end

  def update
    @truths = Truth.all :order => 'votes DESC'
    @truth = Truth.find(params[:id])

# add redirect to the one voted for
#    ranking = 
#maybe make this AJAX

    if @truth.update_attributes(params[:truth])
      redirect_to(@truth, :notice => 'Truth was successfully updated.')
    else
      render :action => "edit"
    end
  end

  def add_vote
    @truth = Truth.find(params[:id])
    @truth.votes = @truth.votes.to_i + 1

    if @truth.save
      redirect_to(:root, :notice => "Thank you for your vote.")
    else
      redirect_to(:back, :notice => "Sorry, we could not count your vote. We'll look into it.")
    end
  end

  def destroy
    @truth = Truth.find(params[:id])

    if @truth.destroy
      redirect_to :root, :notice => "Delete DONE"
    else
      redirect_to :back, :notice => "Delete failed"
    end
  end
end
