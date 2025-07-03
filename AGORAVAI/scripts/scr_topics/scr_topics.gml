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

global.topics[$ "dicas"] = [
	SPEAKER(" Carmen ",PortraitCarmen, PORTRAIT_SIDE.PORTRAITRIGHT),
	TEXT("O que é essa sala?"),
	SPEAKER(" Camila ",PortraitCamila, PORTRAIT_SIDE.PORTRAITLEFT),
	TEXT("Eu não sei..."),
	SPEAKER(" Carmen ",PortraitCarmen, PORTRAIT_SIDE.PORTRAITRIGHT),
	TEXT("Olha, tem uma tela!"),
	TEXT("Consegue ler?"),
	SPEAKER(" Camila ",PortraitCamila, PORTRAIT_SIDE.PORTRAITLEFT),
	TEXT("Posso tentar."),
];	
global.topics[$ "porta"] = [
	TEXT("     Trancada...muito pesada pra tentar abrir...")
];	

global.topics[$ "Primeiro CP"] = [
	TEXT("     Você está indo bem! Continue até o próximo checkpoint!")
];