# -*- encoding : utf-8 -*-
class ImoveisController < ApplicationController

  before_filter :authenticate_user!

  layout "admin"
  def index
    @imoveis = Imovel.order(:nome).page(params[:page]).per(3)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @imoveis }
    end
  end

  # GET /imoveis/1
  # GET /imoveis/1.json
  def show
    @imovel = Imovel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @imovel }
    end
  end

  # GET /imoveis/new
  # GET /imoveis/new.json
  def new
    @imovel = Imovel.new
    12.times do
      @imovel.fotos.build
    end

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @imovel }
    end
  end

  # GET /imoveis/1/edit
  def edit
    @imovel = Imovel.find(params[:id])
  end

  # POST /imoveis
  # POST /imoveis.json
  def create
    @imovel = Imovel.new(params[:imovel])

    respond_to do |format|
      if @imovel.save
        format.html { redirect_to @imovel, notice: 'Imovel was successfully created.' }
        format.json { render json: @imovel, status: :created, location: @imovel }
      else
        format.html { render action: "new" }
        format.json { render json: @imovel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /imoveis/1
  # PUT /imoveis/1.json
  def update
    @imovel = Imovel.find(params[:id])

    respond_to do |format|
      if @imovel.update_attributes(params[:imovel])
        format.html { redirect_to @imovel, notice: 'Imovel was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @imovel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /imoveis/1
  # DELETE /imoveis/1.json
  def destroy
    @imovel = Imovel.find(params[:id])
    @imovel.destroy

    respond_to do |format|
      format.html { redirect_to imoveis_url }
      format.json { head :no_content }
    end
  end
end
