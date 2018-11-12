#config.ru
require 'rack'

class MiPrimeraWebApp
 def call(env)
  [200,{'Content-Type'=>'txt/html'},["<h1>hola</h1>"]]
  [200,{'Content-Type'=>'txt/html'},["<p>lorem ipsum</p>"]]

 end
end

run MiPrimeraWebApp.new