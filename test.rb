
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

#def calculate_average(array_of_grades)
  #pendiente transformar los 0 a 1 7 antes eran una A
  #array_of_grades.inject(0) { |sum, val| sum + val } / array_of_grades.length
  #puts array_of_grades
#end


def promedio#average
  array_of_hashes = create_data_structure('datos.csv')
  array_of_hashes.inject(0){ |sum, x| sum + x }
  puts sum
  # hacer el archivo
  #array_of_hashes.each do |e|
  #  name = array_of_hashes[e][:name]
    #grades = (array_of_hashes[e][:grades])

    #suma = (array_of_hashes[e][:grades]).count
    #sum = array_of_hashes.inject(0) do |acum, item|
      #  if item == 'A'
      #    acum += 1
      #  else
      #  end
    #  end
      #sum.to_f
    #file.puts "el promedio de: #{name}, es de: #{sum}"
  #end
end

promedio
