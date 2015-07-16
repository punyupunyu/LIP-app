class AccountsController < ApplicationController
	def index
		@accounts = Accounts.all
	end
	def new
		@account = Account.new
	end
	def create
		@account = Account.new(account_params)
		if @account.save
			redirect_to '/accounts'
		else
			render 'new'
		end
	end
	def feed
		@posts = posts.all
		respond_to do |format|
			format.rss {render :layout => false }
		end
	end
	

	private
	def account_params
		params.require(:account).permit(:account)	
	end
end
