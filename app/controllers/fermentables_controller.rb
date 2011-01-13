class FermentablesController < ApplicationController
  load_and_authorize_resource :brewery
  load_and_authorize_resource :brew,        :through => :brewery
  load_and_authorize_resource :fermentable, :through => :brew

  def index
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @fermentables }
    end
  end

  def show
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @fermentable }
    end
  end

  def new
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @fermentable }
    end
  end

  def edit
  end

  def create
    @fermentable = @brew.fermentables.create(params[:fermentable])
    
    redirect_to brewery_brew_path(@brewery, @brew)
  end

  def update
    respond_to do |format|
      if @fermentable.update_attributes(params[:fermentable])
        format.html { redirect_to(brewery_brew_path(@brewery, @brew), :notice => 'Fermentable was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @fermentable.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @fermentable.destroy

    redirect_to brewery_brew_path(@brewery, @brew)
  end
end
