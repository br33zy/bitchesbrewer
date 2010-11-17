class HopAdditionsController < ApplicationController
  # GET /hop_additions
  # GET /hop_additions.xml
  def index
    @hop_additions = HopAddition.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @hop_additions }
    end
  end

  # GET /breweries/:brewery_id/brews/:brew_id/hop_additions/:id(.:format)
  def show
    @brewery = Brewery.find(params[:brewery_id])
    @brew = @brewery.brews.find(params[:brew_id])
    @hop_addition = @brew.hop_additions.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @hop_addition }
    end
  end

  # GET /hop_additions/new
  # GET /hop_additions/new.xml
  def new
    @hop_addition = HopAddition.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @hop_addition }
    end
  end

  # GET /breweries/:brewery_id/brews/:brew_id/hop_additions/:id/edit(.:format)
  def edit
    @brewery = Brewery.find(params[:brewery_id])
    @brew = @brewery.brews.find(params[:brew_id])
    @hop_addition = @brew.hop_additions.find(params[:id])
  end

  # POST /hop_additions
  # POST /hop_additions.xml
  def create
    @brewery = Brewery.find(params[:brewery_id])
    @brew = @brewery.brews.find(params[:brew_id])
    @hop_addition = @brew.hop_additions.create(params[:hop_addition])

    respond_to do |format|
      if @hop_addition.save
        format.html { redirect_to(brewery_brew_path(@brewery, @brew), :notice => 'Hop addition was successfully created.') }
        format.xml  { render :xml => @hop_addition, :status => :created, :location => @hop_addition }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @hop_addition.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /breweries/:brewery_id/brews/:brew_id/hop_additions/:id(.:format)
  def update
    @brewery = Brewery.find(params[:brewery_id])
    @brew = @brewery.brews.find(params[:brew_id])
    @hop_addition = @brew.hop_additions.find(params[:id])

    respond_to do |format|
      if @hop_addition.update_attributes(params[:hop_addition])
        format.html { redirect_to(brewery_brew_path(@brewery, @brew), :notice => 'Hop addition was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @hop_addition.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /breweries/:brewery_id/brews/:brew_id/hop_additions/:id(.:format)
  def destroy
    @brewery = Brewery.find(params[:brewery_id])
    @brew = @brewery.brews.find(params[:brew_id])
    @hop_addition = @brew.hop_additions.find(params[:id])
    @hop_addition.destroy

    respond_to do |format|
      format.html { redirect_to(brewery_brew_path(@brewery, @brew)) }
      format.xml  { head :ok }
    end
  end
end
