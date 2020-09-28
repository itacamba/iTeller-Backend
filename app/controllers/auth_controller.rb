class AuthController < ApplicationController
    
    def login 
        user = User.find_by(email: params[:email])
        if(user && user.authenticate(params[:password]))
        payload = {user: {id: user.id, user_id: user.id, email: params[:email], name: user.name, accounts: user.accounts}}
        token = encode(payload)
        new_hash={}
        new_hash['user_data'] = payload
        new_hash['token'] = token
        render json: new_hash
        else
            render json: { error: 'Username or Password is incorrect' }
        end
    end
end
