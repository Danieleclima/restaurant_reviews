module SessionsHelper
    def logged_in?
        session[:username]
    end
end
