class BrewsController < ApplicationController
  load_and_authorize_resource :brewery
  load_and_authorize_resource :brew, :through => :brewery

  def index
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @brews }
    end
  end

  def show
    @fermentables = @brew.fermentables.all

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @brew }
    end
  end

  def new
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @brew }
    end
  end

  def edit
  end

  def create
    @brew = @brewery.brews.create(params[:brew])

    redirect_to brewery_path(@brewery)
  end

  def update
    respond_to do |format|
      if @brew.update_attributes(params[:brew])
        format.html { redirect_to(brewery_brew_path(@brewery, @brew), :notice => 'Brew was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @brew.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @brew.destroy

    redirect_to brewery_path(@brewery)
  end
end
