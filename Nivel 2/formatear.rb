def formatear(h)
	"El producto #{h[:name]} con id #{h[:id]} tiene un precio de #{h[:price]} por #{h[:unit]}"
end

hash1 = {name: "leche", id: 2, price: 5.95, unit: "litro"}
puts formatear(hash1)
