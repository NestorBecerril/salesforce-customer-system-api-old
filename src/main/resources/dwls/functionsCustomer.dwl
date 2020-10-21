%dw 2.0
fun getChanel(typeChanel : String,contactType: Array) = 
    (contactType.*communicationChannelType filter ($.communicationChannelName == typeChanel)).communicationValue[0] default ''
    
fun getGeographicalCoordinates (typeCoor: Number , coordinates: String)=
	 (coordinates splitBy(";"))[typeCoor] as Number

