class ReportsController < ApplicationController
  load_and_authorize_resource
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_report, only: [:show, :edit, :update, :destroy]

  def index
    @reports = Report.all
  end

  def show
  end

  def new
    @report = Report.new
  end

  def edit
    @locations = Location.all.order(:name)
    @categories = Category.all.order(:name)
    @subcategories = Subcategory.where("category_id = ?", @report.category_id).order(:name)
  end

  def create
    @locations = Location.all.order(:name)
    @categories = Category.all.order(:name)
    @subcategories = Subcategory.where("category_id = ?", Category.first.id).order(:name)
    @report = Report.new(report_params)
    @report.user = current_user
    if @report.save
      redirect_to reports_url, notice: 'Report was successfully created.'
    else
      render :new
    end
  end

  def update
    if @report.update(report_params)
      redirect_to reports_url, notice: 'Report was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @report.destroy
    redirect_to reports_url, notice: 'Report was successfully deleted.'
  end

  private
  def set_report
    @report = Report.find(params[:id])
  end

  def report_params
    params.require(:report).permit(:date_occurred, :title, :description, :user_id, :location_id, :category_id, :subcategory_id)
  end
end