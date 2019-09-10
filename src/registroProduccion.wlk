object registroProduccion 
{
	var produccionPorDia = [53,18,49,62,33]	
	
	method cambiarProduccionPorDia(nuevaLista) 
	{
		produccionPorDia = nuevaLista
	}
//--------------------------------------------------------
	method algunDiaSeProdujo(cantidad)
	{
		return produccionPorDia.contains(cantidad)
	}
	method maximoValorDeProduccion()
	{
		produccionPorDia.max()
	}
	method valoresDeProduccionPares()
	{
		return produccionPorDia.filter({i => i.even()})
	}
	method produccionEsAcotada(n1,n2)
	{
		return produccionPorDia.all({i => i.between(n1,n2)})
	}
	method produccionesSuperioresA(cuanto)
	{
		return produccionPorDia.filter({i => i > cuanto})
	}
	method produccionesSumando(n)
	{
		return produccionPorDia.map({i => i + n})
	}
	method totalProducido()
	{
		return produccionPorDia.sum()
	}
	method ultimoValorDeProduccion()
	{
		return produccionPorDia.last()
	}
	method cantidadProduccionesMayorALaPrimera()
	{
		return produccionPorDia.count({i => i > produccionPorDia.first()})
	}
}
