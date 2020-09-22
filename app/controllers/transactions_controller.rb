class TransactionsController < ApplicationController
    def index
        transactions = Transaction.all
        render json: transactions
    end


    def  create
       transaction = Transaction.new(account_id: params[:account_id], name: params["name"], amount: params["amount"], category: params["category"], date: DateTime.now(), vendor: params["vendor"], note: params["note"], t_type: params["t_type"])
       if transaction.valid? 
        Transaction.create(transaction)
       else
        render json: "Invalid Entry"
       end
    end

    def show
        transaction = Transaction.find(params[:id])
        render json: transaction
    end

    def delete 
        transaction = Transaction.find(params[:id])
        transaction.destroy 
        redirect_to action: 'index'
    end

end
