
#manejo de archivo
file = File.open('datos.csv', 'r')
data = file.readlines.map(&:chomp)
data = data.map { |e| e.split(',') }
file.close

puts data
puts "---------------------", "\n"

#manejo de datos
#opcion 1
def promedio (data)

end

#opcion 2
def inasistencias (data)

end


#opcion3
def aprobados (data)

end

#opciones de menu
option = 0
puts 'Informacion del curso: ', "\n"
while option
  puts 'Ingrese una opcion: ', "\n"
  puts 'Ingrese 1: para ver el nombre de cada alumno y sus notas'
  puts 'Ingrese 2: para mostrar la cantidad de inasistencias totales'
  puts 'Ingrese 3: para mostrar a los alumnos aprobados'
  puts 'Ingrese 4: para salir'
  option = gets.to_i
  case option
  when 1
    puts promedio
  when 2
    puts inasistencias
  when 3
    puts aprobados
  when 4
    puts 'salir', "\n"
    exit
  else
    puts 'Opcion no valida, ingresa una entre 1 y 4', "\n"
  end
end
