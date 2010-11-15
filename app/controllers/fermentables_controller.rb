class FermentablesController < ApplicationController
  # GET /fermentables
  # GET /fermentables.xml
  def index
    @fermentables = Fermentable.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @fermentables }
    end
  end

  # GET /fermentables/1
  # GET /fermentables/1.xml
  def show
    @fermentable = Fermentable.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @fermentable }
    end
  end

  # GET /fermentables/new
  # GET /fermentables/new.xml
  def new
    @fermentable = Fermentable.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @fermentable }
    end
  end

  # GET /brews/:brew_id/fermentables/:id/edit(.:format)
  def edit
    @brew = Brew.find(params[:brew_id])
    @fermentable = @brew.fermentables.find(params[:id])
  end

  # POST /brews/:brew_id/fermentables(.:format)
  def create
    @brew = Brew.find(params[:brew_id])
    @fermentable = @brew.fermentables.create(params[:fermentable])

    redirect_to brew_path(@brew)
  end

  # PUT /fermentables/1
  # PUT /fermentables/1.xml
  def update
    @fermentable = Fermentable.find(params[:id])

    respond_to do |format|
      if @fermentable.update_attributes(params[:fermentable])
        format.html { redirect_to(@fermentable.brew, :notice => 'Fermentable was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @fermentable.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /fermentables/1
  # DELETE /fermentables/1.xml
  def destroy
    @brew = Brew.find(params[:brew_id])
    @fermentable = @brew.fermentables.find(params[:id])
    @fermentable.destroy

    redirect_to brew_path(@brew)
  end
end
