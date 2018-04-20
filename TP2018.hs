-- Punto 1.1, modelado del data del microcontrolador

data Microcontrolador = Microcontrolador {
                                memoria::[Int],
                                acumuladorA::Int,
                                acumuladorB::Int,
                                programCounter::Int,
                                errror::String
                                } deriving Show

-- Punto 1.2, modelado del micontrolador xt8088

xt8088 = Microcontrolador {
                   memoria = [],
                   acumuladorA = 0,
                   acumuladorB = 0,
                   programCounter = 0,
                   errror = ""
                   }

-- Punto 2.1, desarrollo instruccion NOP

nop::Microcontrolador->Microcontrolador
nop microcontrolador = microcontrolador {
                                    programCounter = programCounter microcontrolador + 1
                                }

-- Punto 2.2, para aumentar el programCounter en 3 utilizamos una composicion de funciones desde la consola de comando "(nop.nop.nop) xt8088"


-- Punto 3.1, funciones LODV, SWAP y ADD

lodv::Int->Microcontrolador
lodv val microcontrolador = microcontrolador {
                                    acumuladorA = val
                                }

swap::Microcontrolador->Microcontrolador
swap microcontrolador = microcontrolador {
                                    acumuladorA = acumuladorB microcontrolador,
                                    acumuladoraB = acumuladorA microcontrolador,
                                }

add::Microcontrolador->Microcontrolador
add microcontrolador = microcontrolador {
                                    acumuladorA = microcontrolador acumuladorA + microcontrolador acumuladorB,
                                    acumuladorB = 0
                                }

                                


