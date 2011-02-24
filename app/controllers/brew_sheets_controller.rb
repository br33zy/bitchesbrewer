class BrewSheetsController < ApplicationController
  load_and_authorize_resource :brewery
  load_and_authorize_resource :brew,        :through => :brewery
  load_and_authorize_resource :brew_sheet,  :through => :brew

  # GET /brew_sheets
  # GET /brew_sheets.xml
  def index
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @brew_sheets }
    end
  end

  # GET /brew_sheets/1
  # GET /brew_sheets/1.xml
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @brew_sheet }
    end
  end

  # GET /brew_sheets/new
  # GET /brew_sheets/new.xml
  def new
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @brew_sheet }
    end
  end

  # GET /brew_sheets/1/edit
  def edit
  end

  # POST /brew_sheets
  # POST /brew_sheets.xml
  def create
    @brew_sheet = @brew.brew_sheets.create(params[:brew_sheet])

    redirect_to brewery_brew_brew_sheet_path(@brewery, @brew, @brew_sheet)
  end

  # PUT /brew_sheets/1
  # PUT /brew_sheets/1.xml
  def update
    respond_to do |format|
      if @brew_sheet.update_attributes(params[:brew_sheet])
        format.html { redirect_to(@brew_sheet, :notice => 'Brew sheet was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @brew_sheet.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /brew_sheets/1
  # DELETE /brew_sheets/1.xml
  def destroy
    @brew_sheet.destroy

    respond_to do |format|
      format.html { redirect_to(brew_sheets_url) }
      format.xml  { head :ok }
    end
  end
end
