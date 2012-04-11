class UserInfosController < ApplicationController
	
  # GET /user_infos
  # GET /user_infos.xml
  def index
    @user_infos = UserInfo.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @user_infos }
    end
  end

  # GET /user_infos/1
  # GET /user_infos/1.xml
  def show
    @user_info = UserInfo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user_info }
    end
  end

  # GET /user_infos/new
  # GET /user_infos/new.xml
  def new
    @user_info = UserInfo.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @user_info }
    end
  end

  # GET /user_infos/1/edit
  def edit
    @user_info = UserInfo.find(params[:id])
  end

  # POST /user_infos
  # POST /user_infos.xml
  def create
    @user_info = UserInfo.new(params[:user_info])

    respond_to do |format|
      if @user_info.save
        format.html { redirect_to(@user_info, :notice => 'User info was successfully created.') }
        format.xml  { render :xml => @user_info, :status => :created, :location => @user_info }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @user_info.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /user_infos/1
  # PUT /user_infos/1.xml
  def update
    @user_info = UserInfo.find(params[:id])

    respond_to do |format|
      if @user_info.update_attributes(params[:user_info])
        format.html { redirect_to(@user_info, :notice => 'User info was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user_info.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /user_infos/1
  # DELETE /user_infos/1.xml
  def destroy
    @user_info = UserInfo.find(params[:id])
    @user_info.destroy

    respond_to do |format|
      format.html { redirect_to(user_infos_url) }
      format.xml  { head :ok }
    end
  end
end
