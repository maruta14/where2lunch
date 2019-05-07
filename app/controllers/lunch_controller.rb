class LunchController < ApplicationController
  def go

    eataries = ['松のや','あすかて食堂','te.to.te','トタンコットン','7-11']

    @recommend = eataries.sample
  end
end
