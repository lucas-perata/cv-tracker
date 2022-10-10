class Api::V1::ApplicationsController < ApiController
  before_action :set_application, only: %i[ show update destroy ]

  def index
    @applications = Application.all

    render json: @applications
  end

  def show
    render json: @application
  end

  def create
    @application = Application.new(application_params)

    if @application.save
      render json: @application, status: :created, location: @application
    else
      render json: @application.errors, status: :unprocessable_entity
    end
  end

  def update
    if @application.update(application_params)
      render json: @application
    else
      render json: @application.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @application.destroy
  end

  private
    def set_application
      @application = Application.find(params[:id])
    end

    def application_params
      params.require(:application).permit(:company, :date, :salary, :benefits, :working_hours_daily, :flex_hours, :number_interviews, :status)
    end
end
