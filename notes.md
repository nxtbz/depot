
#h1 personal notes on the Agile web 4 book.

#h3 TESTING page 104: chapter 8, task: c.

```ruby
require 'test_helper'
class TheControllerTest < ActionController::TestCase
    test "should get index page " do 
        get :index 
        assert_response :success
        assert_select '#main #jumbotron', minimum: 1
    end     
end
```

assert_select() performs varies based on the type of parameter.
- numbers -> quantity
- string -> result 
- regex -> result 


#h3 CACHING of partials, 
to handle caching of partials you set the action_controller.perform_caching in the environment to true (development.rb)

On the model you create method for self (think about it) to sort and order the products

```ruby 
# in the model
class Product < ActiveRecord::Base
    // validations 
    def self.latest 
     Product.order(:updated_at).ast 
    end
end
```

```html
<!-- in the view
 add caching for the elements you want to be cached 
 there you call the cache method and pass it an array of the elements you want to cache, the naming of ['you decide', Thing.to_cache ].-->

<% cache ['store', Product.latest ] do %>
    <% @products.each do |product| %>
        <% cache ['entry', product] do %>
            <div class="entry">
```






```ruby 
def beer(drinks)
    puts "hi beer"
end
```


[ ]stuff to do 
`strike through use the ~`
#h1 
##h2 
###h3
[linkg](http://dothis/"link")

> 'block >'