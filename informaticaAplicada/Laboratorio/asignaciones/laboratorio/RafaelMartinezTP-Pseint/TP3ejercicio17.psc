Algoritmo TP03Ej17modificado

	definir dia, mes, a�o, diaAc, mesAc, a�oAc, diasVividos, edad como Entero
	
	Escribir "Ingrese dia de nacimiento (DD): "
	Leer dia
	Escribir "Ingrese mes de nacimiento (MM): "
	Leer mes
	Escribir "Ingrese a�o de nacimiento (AAAA): "
	Leer a�o
	
	Escribir "Ingrese dia actual (DD): "
	Leer diaAc
	Escribir "Ingrese mes actual (MM): "
	Leer mesAc
	Escribir "Ingrese a�o actual (AAAA): "
	Leer a�oAc
	
	
	Si a�oAc >= a�o Entonces
		Si mes >= 1 Y mes <= 12 Entonces
			Si (mes=1 O  mes=3 O  mes=5 O mes=7 O mes=8 O mes=10 O mes=12) Entonces
				Si (dia>=1 Y dia<=31) Entonces
					Si (mesAc=1 O  mesAc=3 O  mesAc=5 O mesAc=7 O mesAc=8 O mesAc=10 O mesAc=12) Y (diaAc>=1 Y diaAc<=31) Entonces
						diasVividos <- (a�oAc - a�o) * 365 + (mesAc - mes) * 30 + (diaAc - dia)
					SiNo
						Escribir "Dia actual mal ingresado."
					Fin Si
				SiNo
					Escribir "Dia de nacimiento mal ingresado."
				Fin Si
				
			SiNo
				Si (mes=4 O  mes=6 O  mes=9 O mes=11) Entonces
					Si (dia>=1 Y dia<=30) Entonces
						Si (mesAc=4 O  mesAc=6 O  mesAc=9 O mesAc=11) Y (diaAc>=1 Y diaAc<=30) Entonces
							diasVividos <- (a�oAc - a�o) * 365 + (mesAc - mes) * 30 + (diaAc - dia)
						SiNo
							Escribir "Dia actual mal ingresado."
						Fin Si
					SiNo
						Escribir "Dia de nacimiento mal ingresado."
					Fin Si
				SiNo
					Si (mes=2) Entonces
						Si (a�o mod 4)=0 Entonces
							Si (dia>=1 Y dia<=29) Entonces
								Si (mesAc=2 Y (diaAc>=1 Y diaAc<=29)) Entonces
									diasVividos <- (a�oAc - a�o) * 365 + (mesAc - mes) * 30 + (diaAc - dia)
								SiNo
									Escribir "Dia actual mal ingresado."
								Fin Si
							SiNo
								Escribir "Dia de nacimiento mal ingresado."
							Fin Si
						SiNo
							Si (dia>=1 Y dia<=28) Entonces
								Si (mesAc=2 Y (diaAc>=1 Y diaAc<=28)) Entonces
									diasVividos <- (a�oAc - a�o) * 365 + (mesAc - mes) * 30 + (diaAc - dia)
								SiNo
									Escribir "Dia actual mal ingresado."
								Fin Si
							SiNo
								Escribir "Dia de nacimiento mal ingresado."
							Fin Si
						Fin Si
					SiNo
						Escribir "Mes de nacimiento mal ingresado."
					Fin Si
				Fin Si
			Fin Si
		SiNo
			Escribir "Mes de nacimiento mal ingresado."
		Fin Si
	SiNo
		Escribir "A�o actual menor al a�o de nacimiento."
	Fin Si
	
	edad <- trunc(diasVividos / 365)
	Si edad <> 0 Entonces
		Escribir "Su edad es: ", edad
	SiNo
		Escribir "No se puede mostrar edad."
	Fin Si
	
FinAlgoritmo
