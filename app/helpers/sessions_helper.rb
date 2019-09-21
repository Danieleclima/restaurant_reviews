module SessionsHelper
    def logged_in?
        session[:username]
    end

    def current_user
        session[:user_id]
    end
end
