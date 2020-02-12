# frozen_string_literal: true

class CoordinatorsController < ApplicationController
  before_action :set_coordinator, only: %i[show edit update destroy export_csv]

  def index
    @coordinators = Coordinator.all
  end

  def show
    @participants = @coordinator.participants
    @count_by_birth_year = @coordinator.participants.group(:date_of_birth).count
    @count_by_gender = @coordinator.participants.group(:gender).count
  end

  def export_csv
    @participants = @coordinator.participants
    respond_to do |format|
      format.csv { send_data @participants.to_csv }
    end
  end

  def new
    @coordinator = Coordinator.new
  end

  def edit; end

  def create
    @coordinator = Coordinator.new(coordinator_params)

    respond_to do |format|
      if @coordinator.save
        format.html { redirect_to @coordinator, notice: 'Coordinator was successfully created.' }
        format.json { render :show, status: :created, location: @coordinator }
      else
        format.html { render :new }
        format.json { render json: @coordinator.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @coordinator.update(coordinator_params)
        format.html { redirect_to @coordinator, notice: 'Coordinator was successfully updated.' }
        format.json { render :show, status: :ok, location: @coordinator }
      else
        format.html { render :edit }
        format.json { render json: @coordinator.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @coordinator.destroy
    respond_to do |format|
      format.html { redirect_to coordinators_url, notice: 'Coordinator was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_coordinator
    @coordinator = Coordinator.find(params[:id])
  end

  def coordinator_params
    params.require(:coordinator).permit(:email, :name, :phone_number)
  end
end
