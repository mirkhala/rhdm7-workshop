[when]El solicitante es mayor a {age}=solicitante:Solicitante( getEdad() > {age})
[when]El solicitante es menor a {age}=solicitante:Solicitante( getEdad() < {age})
[when]El solicitante tiene un puntaje en buro menor a {buro}=solicitante:Solicitante( getPuntajeBuro() < {buro})
[when]El candidato es mayor a {age} años, y su puntaje en el buro es menor a {buro}=solicitante:Solicitante( getEdad() > {age} && getPuntajeBuro() < {buro})
[then]Solicitud rechazada por "{mensaje}"=modify( solicitante ) \{ setStatus( "RECHAZO" ), setMensaje("{mensaje}") \}
[then]Log rule name=System.out.println("Rule fired : [" + drools.getRule().getName()+"]");