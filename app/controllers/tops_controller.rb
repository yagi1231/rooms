class TopsController < ApplicationController
  before_action :forbid_login_user, {only: [:top]}
    
end
