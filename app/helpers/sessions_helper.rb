module SessionsHelper
	# login the given user
	def log_in(user)
		session[:user_id] = user.id
	end
	#Return the current loged-in use (if any).
	def current_user
		@current_user ||= User.find_by(id: session[:user_id])
	end
	# Return true if the user is loged in, false otherwise.
	def loged_in?
		!current_user.nil?
	end
	# Log out the current user
	def log_out
		session.delete(:user_id)
		@current_user = nil
	end
end
