class BrewsController < ApplicationController
  # GET /brews
  # GET /brews.xml
  def index
    @brews = Brew.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @brews }
    end
  end

  # GET /breweries/:brewery_id/brews/:id(.:format)
  # GET /brews/1.xml
  def show
    @brewery = Brewery.find(params[:brewery_id])
    @brew = Brew.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @brew }
    end
  end

  # GET /brews/new
  # GET /brews/new.xml
  def new
    @brew = Brew.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @brew }
    end
  end

  # GET /breweries/:brewery_id/brews/:id/edit(.:format)
  def edit
    @brewery = Brewery.find(params[:brewery_id])
    @brew = @brewery.brews.find(params[:id])
  end

  # POST /brews
  # POST /brews.xml
  def create
    @brewery = Brewery.find(params[:brewery_id])
    @brew = @brewery.brews.create(params[:brew])

    redirect_to brewery_path(@brewery)

  end

  # PUT /breweries/:brewery_id/brews/:id(.:format)
  # PUT /brews/1.xml
  def update
    @brewery = Brewery.find(params[:brewery_id])    
    @brew = @brewery.brews.find(params[:id])

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

  # DELETE /brews/1
  # DELETE /brews/1.xml
  def destroy
    @brewery = Brewery.find(params[:brewery_id])
    @brew = @brewery.brews.find(params[:id])
    @brew.destroy

    redirect_to brewery_path(@brewery)
  end
end
