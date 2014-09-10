require 'page-object'

class Quote
  include PageObject

page_url "http://www.budget.com/budgetWeb/home/home.ex"


text_field(:pick_up, :id => 'txtPUDate')
text_field(:return, :id => 'txtDODate')
text_field(:location, :id => 'pulDesc')
link(:submit, :id => 'cntnBtn')
end