class AuthController < ApplicationController
	def callback
    provider_user = request.env['omniauth.auth']

    #find create a user
    puts provider_user
    puts params
    user = User.find_or_create_by(provider_id: provider_user['uid'], provider: params[:provider]) do |u|
      u.provider_hash = provider_user['credentials']['token']
      u.fname = provider_user['info']['name']
      u.email = provider_user['info']['email']
    end

    session[:user_id] = user.id
    redirect_to root_path
  end

  def logout
    session[:user_id] = nil
    redirect_to root_path
  end

  def failure
    #TODO: display error page
    render plain: "this is a failure"
  end
end
