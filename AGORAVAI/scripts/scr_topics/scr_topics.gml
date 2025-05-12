global.topics = {};

global.topics[$ "Example"] = [
	SPEAKER("Carmen",PortraitCarmen,PORTRAIT_SIDE.PORTRAITLEFT),
	TEXT("O que é aquilo?"),
	SPEAKER("Camila",PortraitCamila,PORTRAIT_SIDE.PORTRAITRIGHT),
	TEXT("Parece um bug...Esqueci a janela aberta!")
];

global.topics[$ "inicial"] = [
	SPEAKER(" Camila ",PortraitCamila, PORTRAIT_SIDE.PORTRAITRIGHT),
	TEXT("...onde estamos?"),
	SPEAKER(" Carmen ",PortraitCarmen, PORTRAIT_SIDE.PORTRAITLEFT),
	TEXT("Eu não sei..."),
	TEXT("E se testarmos as portas? Talvez exista uma saída.")
];	