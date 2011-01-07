class TemperaturesController < ApplicationController
  # GET /temperatures
  # GET /temperatures.xml
  def index
    @temperatures = Temperature.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @temperatures }
    end
  end

  # GET /temperatures/1
  # GET /temperatures/1.xml
  def show
    @temperature = Temperature.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @temperature }
    end
  end

  # GET /temperatures/new
  # GET /temperatures/new.xml
  def new
    @temperature = Temperature.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @temperature }
    end
  end

  # GET /temperatures/1/edit
  def edit
    @temperature = Temperature.find(params[:id])
  end

  # POST /temperatures
  # POST /temperatures.xml
  def create
    @temperature = Temperature.new(params[:temperature])

    respond_to do |format|
      if @temperature.save
        format.html { redirect_to(@temperature, :notice => 'Temperature was successfully created.') }
        format.xml  { render :xml => @temperature, :status => :created, :location => @temperature }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @temperature.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /temperatures/1
  # PUT /temperatures/1.xml
  def update
    @temperature = Temperature.find(params[:id])

    respond_to do |format|
      if @temperature.update_attributes(params[:temperature])
        format.html { redirect_to(@temperature, :notice => 'Temperature was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @temperature.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /temperatures/1
  # DELETE /temperatures/1.xml
  def destroy
    @temperature = Temperature.find(params[:id])
    @temperature.destroy

    respond_to do |format|
      format.html { redirect_to(temperatures_url) }
      format.xml  { head :ok }
    end
  end
end
