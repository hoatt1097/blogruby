class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	before_action :set_locale

	include SessionsHelper
	include ApplicationHelper
	
	private

	def session_id 
		session[:user_id]
	end

	def set_locale
		I18n.locale = params[:locale] || I18n.default_locale
	end

	def current_user
		session[:user_id].nil? ? nil : User.find(session[:user_id])
	end

	def current_cart
		Cart.find(session[:cart_id])
	rescue ActiveRecord::RecordNotFound
		cart = Cart.create
		session[:cart_id] = cart.id
		cart
	end

	helper_method :current_cart, :current_user, :session_id
end
