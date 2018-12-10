
#manejo de archivo
file = File.open('datos.csv', 'r')
data = file.readlines.map(&:chomp)
file.close
puts data


#manejo de datos

#opciones de menu
option = 0
puts 'notas del curso', "\n"
while option
	puts 'Ingrese una opcion: ', "\n"
	puts 'Ingrese 1: para ver el nombre de cada alumno y sus notas'
	puts 'Ingrese 2: para mostrar la cantidad de inasistencias totales'
	puts 'Ingrese 3: para mostrar a los alumnos aprobados'
	puts 'Ingrese 4: para salir'

	option = gets.to_i
	case option
		when 1
		puts '1', "\n"
		puts promedio
	when 2
		puts '2', "\n"
		puts inasistencias
	when 3
		puts '3', "\n"
		puts aprobados
	when 4
		puts 'salir', "\n"
		exit
	else
		puts 'Opcion no valida, ingresa una entre 1 y 4', "\n"
	end
end
