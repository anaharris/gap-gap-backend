class MessagesController < ApplicationController
  skip_before_action :authorized, only [:index, :show, :create]

end
