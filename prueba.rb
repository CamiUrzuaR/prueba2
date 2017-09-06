puts 'Bienvenido al sistema de gestión académica. Por favor, seleccione una opción:'

option = 0

average = 0

lines = []

def show_average
  lines = File.open('notas.csv', 'r') { |file| lines = file.readlines }
  new_lines = []
  lines.each { |line| new_lines.push(line.split(', ').map(&:chomp)) }

  new_lines.each do |average|
    name = average.shift
    avrg = get_average(average)
    File.open('promedio.csv', 'w') {|file| file.puts 'El promedio del alumno #{name} es #{avrg}' }
  end
end

def get_average(average)
  sum = 0
  average.each do |ele|
  unless ele == 'A'
    sum += ele.to_i
  end
  end
puts average = sum / ele.count.to_f
end

def show_absence
  lines = File.open('notas.csv', 'r') { |file| lines = file.readlines }
  new_lines = []
  lines.each { |line| new_lines.push(line.split(', ').map(&:chomp)) }
end
  new_lines.map do |absense|
    name = absence.shift
    abs = absence.count('A')
    puts 'Las inasistencias totales de #{name} fueron #{abs}'
  end

while option != 4
  puts '1: calcular el promedio de un alumno'
  puts '2: calcular las inasistencias'
  puts '3: mostrar alumnos aprobados'
  puts '4: salir del programa'

  option = gets.chomp.to_i

  case option
  when 1
    show_average
  when 2
    show_absence
  when 3
    show_passing
  when 4
    puts 'Sesión finalizada. Muchas gracias por ingresar al sistema de gestión académica.'
  else
    puts 'Opción no válida. Por favor, ingrese un número entre el 1 y el 4.'
  end
end
