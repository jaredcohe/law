class CommentsController < ApplicationController
  before_filter :authenticate, :only => [:edit, :update, :destroy]

end
