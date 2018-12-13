
def create_data_structure(file)
  array_of_hashes = []
  #manejo de archivo
  file = File.open(file, 'r')
  data = file.readlines.map(&:chomp)
  file.close
  data = data.map { |e| e.split(', ') }
  data.each do |line|
    student = {
      name: line.shift,
      grades: line.map(&:to_i)
    }
    array_of_hashes << student
  end
  return array_of_hashes
end

def calculate_average(array_of_grades)
  #pendiente transformar los 0 a 1 7 antes eran una A
  array_of_grades.inject(0){ |sum,val| sum + val } / array_of_grades.length
end

#manejo de datos
#opcion 1
def promedio
  array_of_hashes = create_data_structure('datos.csv')
  # hacer el archivo
  array_of_hashes.each do |student_hash|
    average = calculate_average(student_hash[:grades])
    name = student_hash[:name]
    file.puts "#{name}, #{average}"
  end

end

#opcion 2
def inasistencias
  #line = data.map { |e| e.split(',') }
  #line.select { |e| e.include? "P" }
  #puts line
end
  #new_array = data.map { |e| e.include? 'A' }
  #puts new_array

#opcion3
def aprobados (data)

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
