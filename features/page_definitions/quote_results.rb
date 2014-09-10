require 'page-object'
class QuoteResults

  include PageObject

span(:response, :class=> 'widgettextWhite')
span(:page_results, :class => 'formError')
end