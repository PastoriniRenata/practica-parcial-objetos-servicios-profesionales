import provincias.*


class Profesional{
	const universidad
	const provinciasEnLasQuePuedeTrabajar
	const honorarioPorHora
}

class ProfesionalUniversidad inherits Profesional(provinciasEnLasQuePuedeTrabajar = #{universidad.provincia()}, honorarioPorHora = universidad.honorariosRecom()){

}

class ProfesionalLitoral inherits Profesional(provinciasEnLasQuePuedeTrabajar = #{entreRios, santaFe, corrientes}, honorarioPorHora = 3000){
	
}

class ProfesionalLibre inherits Profesional{
	
}

class Universidad{
	const property provincia
	const honorariosRecom
	
}


class EmpresaDeServicios{
	var honorarioRef
	var profesionales

	method cantEmpleadosDe(universidad){
		return profesionales.count({prof => prof.universidad() == universidad})
	}

	method profesionalesCaros(){
		return profesionales.count({prof => prof.honorarioPorHora() > honorarioRef})
	}

	method universidadesFormadoras(){
		return profesionales.map({prof => prof.universidad()})
	}



}