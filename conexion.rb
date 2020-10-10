class Conexion
  # Instancia que llama la creación de la clase Singleton
  @instance = new

  # Método privado de clase para la creación
  private_class_method = :new

  # Método estático que permite crear una subclase mientras mantiene sólo una instancia
  def self.get_singleton
    puts "Se realiza conexión con la instancia #{@instance.object_id}"
    @instance
  end

end
