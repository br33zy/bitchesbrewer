class HopAdditionsController < ApplicationController
  load_and_authorize_resource :brewery
  load_and_authorize_resource :brew,         :through => :brewery
  load_and_authorize_resource :hop_addition, :through => :brew

  def index
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @hop_additions }
    end
  end

  def show
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @hop_addition }
    end
  end

  def new
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @hop_addition }
    end
  end

  def edit
  end

  def create
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

  def update
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

  def destroy
    @hop_addition.destroy

    respond_to do |format|
      format.html { redirect_to(brewery_brew_path(@brewery, @brew)) }
      format.xml  { head :ok }
    end
  end
end
