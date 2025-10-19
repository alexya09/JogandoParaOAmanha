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

global.topics[$ "bateu"] = [
	TEXT("     Ops! Que tal tentarmos de novo?")
];

global.topics[$ "FIM"] = [
	TEXT("     Parabéns! Você completou o desafio!")
];

global.topics[$ "tutorial"] = [
	TEXT("     Essas são as opções de movimentação para chegar até o final!"),
	TEXT("     Clique nas setas para adiciona-las ao caminho da Camila. Você pode adicionar até 5 comandos por vez."),
	TEXT("     Após executar os comandos aperte no X para limpar as opções. Repita até chegar ao final.")
];

global.topics[$ "tutorial2"] = [
	
	TEXT("     Aperte ENTER para seguir com o tutorial."),
	ARROW(200, 90, 120),
	
    TEXT("     Essas são as opções de movimentação para chegar até   o final!"),
    
	
    TEXT("     Clique nas setas para adiciona-las ao caminho da Camila   Você pode adicionar até 5 comandos por vez."),
    //ARROW(300, 250, 0),
	//ARROW(-1, -1, 0),
	
    TEXT("     Após executar os comandos aperte no X para limpar as    opções. Repita até chegar ao final."),
    //ARROW(1130, 580, 240)
	ARROW(1130, 580, 240),
	ARROW(-1, -1, 0)
];

