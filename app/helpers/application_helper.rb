module ApplicationHelper
    def logged_in?
        unless session[:user_id] 
            redirect_to new_regestrations_path, notice: "You must be logged in"
        end
    end
end
