class RolesController < ApplicationController
  respond_to :html, :xml, :json
  before_action :set_role, only: [:show, :edit, :update, :destroy]

  def index
    @roles = Role.all.order("id")
    respond_with(@roles)
  end

  def show
    respond_with(@role)
  end

  def new
    @role = Role.new
    respond_with(@role)
  end

  def edit
  end

  def create
    @role = Role.new(role_params)
    @role.save

    redirect_to roles_path
    #respond_with(@role)
  end

  def update
    @role.update(role_params)

    redirect_to roles_path
    #respond_with(@role)
  end

  def destroy
    @role.destroy

    redirect_to roles_path
    #respond_with(@role)
  end

  private
    def set_role
      @role = Role.find(params[:id])
    end

    def role_params
      params.require(:role).permit(:Title)
    end
end
