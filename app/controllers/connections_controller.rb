class ConnectionsController < ApplicationController
  def index
    @connections = Connection.all
  end
end