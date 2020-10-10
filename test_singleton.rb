# Simulando una única conexión a una DB
# Se importa la el archivo de tipo Singleton
require "#{File.expand_path('conexion.rb')}"

# Se crean 4 objetos de tipo Singleton
s1 = Conexion.get_singleton
s2 = Conexion.get_singleton
s3 = Conexion.get_singleton
s4 = Conexion.get_singleton

# Se imprime por consola el id del objeto y se compara con los demás,
# validando que es único
puts "Objeto: #{s1.inspect} ID: #{s1.object_id}\n obj 1 es igual a: obj2-#{s1.equal?(s2)}, obj3-#{s1.equal?(s3)}, obj4-#{s1.equal?(s4)}"
puts "Objeto: #{s2.inspect} ID: #{s2.object_id}\n obj 2 es igual a: obj1-#{s2.equal?(s1)}, obj3-#{s2.equal?(s3)}, obj4-#{s2.equal?(s4)}"
puts "Objeto: #{s3.inspect} ID: #{s3.object_id}\n obj 3 es igual a: obj1-#{s3.equal?(s1)}, obj2-#{s3.equal?(s2)}, obj4-#{s3.equal?(s4)}"
puts "Objeto: #{s4.inspect} ID: #{s4.object_id}\n obj 4 es igual a: obj1-#{s4.equal?(s1)}, obj2-#{s4.equal?(s2)}, obj3-#{s4.equal?(s3)}"
