numero = rand(0..2)
def eleccioncomputador(numero)
    if numero == 0
        return "piedra" 
    end
    if numero == 1 
        return "papel"
    end 
    if numero == 2 
        return "tijera"
    end 
end   

eleccionpersona = ARGV[0]
def eleccionJugador(eleccionpersona)
    eleccion = true
    if eleccionpersona == "piedra" || eleccionpersona == "papel" || eleccionpersona == "tijera"
        return true
    else
        return false
    end
end    

if eleccionJugador(eleccionpersona) == true
    if eleccionpersona == eleccioncomputador(numero)
        puts "Computador juega #{eleccionpersona}."
        puts "Empataste."
    end
    if eleccionpersona == "piedra" && eleccioncomputador(numero) == "papel"
        puts "Computador juega papel."
        puts "Perdiste."
    end
    if eleccionpersona == "piedra" && eleccioncomputador(numero) == "tijera"
        puts "Computador juega tijera."
        puts "Ganaste."
    end
    if eleccionpersona == "papel" && eleccioncomputador(numero) == "piedra"
        puts "Computador juega piedra."
        puts "Ganaste."
    end
    if eleccionpersona == "papel" && eleccioncomputador(numero) == "tijera"
        puts "Computador juega tijera."
        puts "Perdiste."
    end
    if eleccionpersona == "tijera" && eleccioncomputador(numero) == "piedra"
        puts "Computador juega piedra."
        puts "Perdiste."
    end
    if eleccionpersona == "tijera" && eleccioncomputador(numero) == "papel"
        puts "Computador juega papel."
        puts "Ganaste."
    end    
else
    puts "Argumento invalido: Debe ser piedra, papel o tijera."        
end    

