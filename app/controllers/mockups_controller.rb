class MockupsController < ApplicationController
  def page_a
  end

  def page_b
  end
  
  def login
    render layout: 'mockup_first_step'
  end

end
