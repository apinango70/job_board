class AdminController < ApplicationController
  before_action :set_user, only: [ :update]
  before_action :authenticate_user!
  before_action :authorize_admin!

  def list_user
    @pagy, @users = pagy(User.all, items: 5)
  end

  def edit_user
    @pagy, @users = pagy(User.order(:id), items: 5)
  end

  def create
    @user = User.new(user_params)
    puts "Received parameters: #{params.inspect}"

    if @user.save
      redirect_to admin_list_user_path, notice: 'User was successfully created.'
    else
      #Muestro los mensajes personalizados de error definidos en las validaciones
      error_messages = @user.errors.full_messages.join(', ')
      redirect_to admin_create_user_path, alert: "User was not created. #{error_messages}"
    end
  end

  def new
    @user = User.new
  end

  def update
    if @user.update(user_params)
      redirect_to admin_edit_user_path, notice: 'User was successfully updated.'
    else
      redirect_to admin_edit_user_path, alert: 'User was not updated.'
    end
  end

  def destroy_user
    @user = User.find(params[:id])
    @user.destroy
    redirect_to admin_list_user_path, notice: 'User was successfully deleted.'
  end

  private

  def authorize_admin!
    redirect_to root_path, alert: 'Access Denied' unless current_user.admin?
  end

  # Método para pasar parámetros anidados bajo un hash con la clave :user en la solicitud por seguridad
  def user_params
    params.require(:user).permit(
                                  :email,
                                  :password,
                                  :password_confirmation,
                                  :role,
                                  :first_name,
                                  :last_name,
                                  :photo
                                )
  end

  def set_user
    @user = User.find(params[:id])
  end

end
