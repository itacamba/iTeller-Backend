class AccountsController < ApplicationController

    def index 
        accounts = Account.all 
        render json: accounts, include: [:transactions]
    end

    def show
    account = Account.find(params[:id])
    render json: account, include: [:transactions]
    end

end
