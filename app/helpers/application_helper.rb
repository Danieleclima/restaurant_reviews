module ApplicationHelper
    def logged_in?
        session[:username]
    end

    def current_user
       User.find_by(:id => session[:user_id])
    end
end
