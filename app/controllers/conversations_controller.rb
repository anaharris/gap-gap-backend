class ConversationsController < ApplicationController
  skip_before_action :authorized, only [:index, :show, :create]

end
