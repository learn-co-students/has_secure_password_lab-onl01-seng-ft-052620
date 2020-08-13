class User < ApplicationRecord
    # Error: ActiveModel::UnknownAttributeError:
    #    unknown attribute 'password' for User.
    has_secure_password


end
