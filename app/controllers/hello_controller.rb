class HelloController < ApplicationController
  protect_from_forgery

  def index
    if request.post? then
      @title = 'Result'
      @msg = 'you typed: ' + params['input1'] + '.'
      @value = params['input1']
    else
      @title = 'Index'
      @msg = 'type text...'
      @value = ''
    end
    # if params['msg'] != nil then
    #   @title = params['msg']
    # else
    #   @title = 'index'
    # end
    # @msg = 'title is redirect smaple...'
  end

  def other
    redirect_to action: :index, params: {'msg': 'from other page'}
  end
end
