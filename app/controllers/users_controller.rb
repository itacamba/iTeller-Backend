class UsersController < ApplicationController
    
    def index 
        users = User.all 
        render json: users
    end

    def decode_user
        token = request.headers["Authenticate"]
        # byebug
        user = User.find(decode(token)["user"]["user_id"])
        render json: user, include: [:accounts]
    end

    def create 
        user = User.new(name: params['name'], email: params['email'], password: params['password'])
        if user.valid?
            user.save
            payload = {name: params['name'], email: params['email'], password: params['password']}
                token = encode(payload)
                new_hash={}
                new_hash['user_data'] = payload
                new_hash['token'] = token
                render json: new_hash
            else
              render json: { error: 'All fields must not be blank. Password entries must match.'}
        end
    end

end
