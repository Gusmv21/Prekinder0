Proceso menuPrueba

	

	
	definir op como entero;
	definir n1, n2, n3 como entero;
	definir nom, gen como caracter;
	
	
	definir secuencial como entero;
	repetir
		op<-despliegaMenu();
		
		Segun op Hacer
			1:
				secuencial<-promedio(n1,n2,n3);
				
			2:
				aCualVoy<-condicionalSi(nom,gen);
				
			3:
				Cobro <-condicionalSiAni();
			4:
				
			5:
			6:
			7:
			8:
			9:
				
			
			10:
				escribir "adios";
		FinSegun
	Hasta Que op = 10;

	
	

FinProceso
//

////Este subproceso es para definir las opciones del menu
subproceso opcion<- despliegamenu()
	definir opcion como entero;
	//escogi repetir considerando como valor de las opciones desde 1 a 10
	//para que mas adelante al enlazarlo al proceso principal este pueda leer estas opciones y se pueda repetir hasta que la opcion sea 10.
	repetir
		escribir "1.- Secuencial";
		escribir "2.- Condicional Si Entonces";
		escribir "3.- Condicional Si Entonces Anidado";
		escribir "4.- Condicional Segun";
		escribir "5.- Repetitiva Mientras";
		escribir "6.- Repetitiva Repetir";
		escribir "7.- Repetitiva Para";
		escribir "8.- Arreglo Simple";
		escribir "9.- Arreglo Bidimensional";
		escribir "10.- Salir";
		
		leer opcion;
	Hasta Que opcion >= 1 y opcion <= 10
	limpiar pantalla;
	
FinSubProceso
//
////primer requerimiento tènico
subproceso secuencial<-promedio(n1,n2,n3)
	
	definir secuencial como real;

	definir num1 como real;
	definir num2 como real;
	definir num3 como real;
	escribir " ingrese 3 numeros";
	leer num1;
	leer num2;
	leer num3;
	secuencial<- (num1 + num2 + num3)/3;
	
	escribir "el promedio de ", num1," , ", num2, " y ", num3, " es: ", secuencial;
	
FinSubProceso

//SEGUNDO REQUERIMIENTO TÈCNICO

subproceso aCualVoy<-condicionalSi(nom,gen)
	definir aCualVoy como caracter;
	definir nombre como caracter;
	definir genero como caracter;
	definir hombre como logico;
	escribir "Ingrese Nombre";
	leer nombre;
	escribir "Ingrese Genero";
	leer genero;
	hombre<-falso;
	si genero = "hombre" entonces
		hombre <- verdadero;
		escribir "[", nombre, "] - [",  genero, "]"," :debes ir al Baño de Hombres";
	SiNo
		escribir "[", nombre, "] - [",  genero, "]"," :debes ir al Baño de Mujeres";
	FinSi
	
FinSubProceso
//
////TERCER REQUERIMIENTO TÈCNICO
//
subproceso Cobro <-condicionalSiAni()
	definir instalacion como caracter;
	definir cobro como entero;
	definir cobro1 como entero;
	cobro<-250;
	cobro1<-2500;
	definir aCualVoy como caracter;
	definir nombre como caracter;
	definir genero como caracter;
	definir hombre como logico;
	escribir "Ingrese Nombre";
	leer nombre;
	escribir "Ingrese Genero (hombre/mujer)";
	leer genero;
	hombre<-falso;
	escribir "¿Que instalaciones desea usar?, (bano/ducha)";
	leer instalacion;
	definir ducha como logico;
	ducha<-falso;
	si genero = "hombre" entonces
		hombre <- verdadero;
		escribir "[", nombre, "] - [",  genero, "]"," :debes ir al Baño de Hombres";
		si genero != "hombre" Entonces
			hombre<-falso;
			escribir "[", nombre, "] - [",  genero, "]"," :debes ir al Baño de Mujeres";
			
			
			si instalacion = "ducha" Entonces
				ducha<- verdadero;
				escribir "el costo de la instalacion es de: ","$",cobro;
				
			SiNo
				escribir "El costo de la instalacion es de: ","$", cobro1;
				
				
			FinSi
		FinSi
		
		
		
		
	FinSi
	
	
FinSubProceso

//CUARTO REQUERIMIENTO TÈCNICO
subproceso CondicionalSegun(n)
	definir num como entero;
	Escribir "ingrese un numero de 1 a 10";
	leer num;
	
	Segun num Hacer
		1:
			num<-ConvertirATexto(num);
		2:
			num<-ConvertirATexto(num);
		3:
			num<-ConvertirATexto(num);
		De Otro Modo:
			escribir "ingrese un numero de 1 a 10";
	FinSegun
FinSubProceso

//	QUINTO REQUERIMIENTO TÈCNICO

subproceso repetirdor()
	definir arr como entero;
	definir n como entero;
	escribir "ingrese un numero, para detener presione 0";
	leer n;
	dimension arr[n];
	definir g como entero;
	para g<-0 hasta n-1 Hacer
		Repetir
			Mientras n<>hacer
				escribir "ingrese un numero, para detener presione 0";
				leer n;
			FinMientras
		Hasta Que n=0
	FinPara
	
	
	Escribir "los numeros ingresados son", arr[g];
FinSubProceso


