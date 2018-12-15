
def create_data_structure(file)
  array_of_hashes = [] #array nuevo
  #manejo de archivo
  file = File.open(file, 'r')
  data = file.readlines.map(&:chomp)
  file.close
  data = data.map { |e| e.split(', ') } # separar los datos
  data.each do |line|
    student = {
      name: line.shift, #asignar los nombres y las variables
      grades: line.map(&:to_s) #el resto son las notas
    }
    array_of_hashes << student
  end
  puts "====MOSTRANDO CONTENIDO CSV====="
  puts array_of_hashes
  puts "====TERMINADO CONTENIDO CSV====="
  return array_of_hashes
end

def calculate_average(array_of_grades)
  #pendiente transformar los 0 a 1 7 antes eran una A
  array_of_grades.inject(0) { |sum, val| sum + val } / array_of_grades.length
  #return array_of_grades
  #puts array_of_grades
end

#manejo de datos
#opcion 1
def promedio #average
  array_of_hashes = create_data_structure('datos.csv')
  # hacer el archivo
  array_of_hashes.each_index do |student_hash|
    average = calculate_average(student_hash[:grades])
    name = student_hash[:name]
    file.puts "#{name}, #{average}"
  end
end

#opcion2
def inasistencias
  array_of_hashes = create_data_structure('datos.csv')
  puts "==========INICIO DEL EJERICIO2==========="
  array_of_hashes.each_index do |e|
  name = array_of_hashes[e][:name]
  a = (array_of_hashes[e][:grades]).count("A")
  puts "#{name} tiene: #{a} ausencias."
  end
  puts "==========FIN DEL EJERICIO2=============="
end

#opcion3
def aprobados

end

#opciones de menu
option = 0
puts 'Informacion de alumnos: ', "\n"
while option
  puts 'Ingrese una opcion: ', "\n"
  puts 'Ingrese: 1 para ver el nombre de cada alumno y sus notas'
  puts 'Ingrese: 2 para mostrar la cantidad de inasistencias totales'
  puts 'Ingrese: 3 para mostrar a los alumnos aprobados'
  puts 'Ingrese: 4 para salir'
  option = gets.to_i
  case option
  when 1
    #solo un archivo nombre y notas por alumno
    #promedio
    promedio
  when 2
    #por cada persona => nombre y cantidad
    inasistencias
  when 3
    #sin ingreso nota (5-defaul o si ingresa el valor) permitir ingresar notas manuales / ingrese nota minima de aprobacion
    aprobados
  when 4
    puts 'salir', "\n"
    exit
  else
    puts 'Opcion no valida, ingresa una entre 1 y 4', "\n"
  end
end
