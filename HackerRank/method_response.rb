require 'faraday'
require 'json'

def response url
  response = Faraday.get(url).headers
end

#puts response("https://www.google.com")


def q_s_url url
  data = url.split('/')
  last = data.last.split('?')
  data.delete_at(-1)
  data = data.push(last[0])
  params = last[1] ? last[1].split('&').inject({}){|init, param| par = param.split('='); init[par[0]] = par[1]; init } : "No parameters"
  
  {Parameters: params}.to_json
end

puts q_s_url 'www.sitiodeejemplo.net/paginaprincipal/paginasecundaria/contenido.html'
puts q_s_url 'www.sitiodeejemplo.net/pagina.php?nombredevalor1=valor1&nombredevalor2=valor2'
puts q_s_url 'https://www.sitiodeejemplo.net/pagina.php?nombredevalor1=valor1&nombredevalor2=valor2'