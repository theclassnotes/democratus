class ApplicationController < ActionController::Base
  protect_from_forgery
  
  respond_to :html, :mobile
  
  before_filter :authenticate_user!, :instantiate_controller_and_action_names, :prepare_for_mobile
  
  def current_selection_session
    SelectionSession.current_selection_session
  end
  helper_method :current_selection_session
  
  private
    
    def instantiate_controller_and_action_names
      @current_controller = controller_name
      @current_action = action_name
    end
    
    def mobile_device?
      if session[:mobile_param]
        session[:mobile_param] == "1"
      else
        request.user_agent =~ /Mobile|webOS/
      end
    end
    helper_method :mobile_device?

    def prepare_for_mobile
      session[:mobile_param] = params[:mobile] if params[:mobile]
      request.format = :mobile if mobile_device?
    end
    
    def precompiled_assets
        %w( application.css print.css ie.css mobile.css namespace/addresses.css namespace/communities.csss namespace/sessions.css namespace/users.css mobile/namespace/users.css mobile/namespace/sessions.css application.js mobile.js )
    end
    helper_method :precompiled_assets
  
end
