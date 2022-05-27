def eleccioncomputador
    numero = rand(0..2)
    case numero
    when 0
        $ec = "piedra" 
    when 1 
        $ec = "papel"
    when 2
        $ec = "tijera"
    end
end   

eleccioncomputador

eleccionpersona = ARGV[0]
def eleccionJugador(eleccionpersona)
    eleccionpersona == "piedra" || eleccionpersona == "papel" || eleccionpersona == "tijera" ? true:false
end    

if eleccionJugador(eleccionpersona) == true
    if eleccionpersona == $ec
        puts "Computador juega #{eleccionpersona}."
        puts "Empataste."
    elsif eleccionpersona == "piedra" && $ec == "papel"
        puts "Computador juega papel."
        puts "Perdiste."
    elsif eleccionpersona == "piedra" && $ec == "tijera"
        puts "Computador juega tijera."
        puts "Ganaste."
    elsif eleccionpersona == "papel" && $ec == "piedra"
        puts "Computador juega piedra."
        puts "Ganaste."
    elsif eleccionpersona == "papel" && $ec == "tijera"
        puts "Computador juega tijera."
        puts "Perdiste."
    elsif eleccionpersona == "tijera" && $ec == "piedra"
        puts "Computador juega piedra."
        puts "Perdiste."
    elsif eleccionpersona == "tijera" && $ec == "papel"
        puts "Computador juega papel."
        puts "Ganaste."
    end    
else
    puts "Argumento invalido: Debe ser piedra, papel o tijera."        
end    

