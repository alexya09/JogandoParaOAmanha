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

global.topics[$ "Breakfast"] = [
	SPEAKER("Camila", PortraitCamila, PORTRAIT_SIDE.PORTRAITLEFT),
	CHOICE("What do you want for breakfast?",
		OPTION("Eggs", "Chose Eggs"),
		OPTION("Pancakes", "Chose Pancakes"))
];

global.topics[$ "Chose Eggs"] = [
	TEXT("That's a healthy way to start the day!"),
	GOTO("End of Breakfast")
];

global.topics[$ "Chose Pancakes"] = [
	TEXT("Ooh, yummy!"),
	GOTO("End of Breakfast")
];

global.topics[$ "End of Breakfast"] = [
	TEXT("Goodbye, now!")
];

global.topics[$ "conversa_fantasma"] = [
	// O diálogo começa, mas esconde a caixa
	SET_UI(false, true), 
	SPEAKER("Fantasma"),
	TEXT("OooOOoO... Meu texto está flutuando!"),
	
	// A caixa volta a aparecer
	SET_UI(true, true), 
	SPEAKER("Herói"),
	TEXT("Uau! Que truque legal!"),
	
	// A caixa continua visível até você mandar esconder de novo
	TEXT("Como você fez isso?") 
];

global.topics[$ "minha_cena_com_imagem"] = [
    SET_UI(false, false), // Oculta a caixa de diálogo principal se quiser um fundo limpo
    IMAGE(spr_camila_idle_down), // Mostra uma imagem de fundo, centralizada
    TEXT("Olhe para esta floresta mágica!"),
    IMAGE(spr_camila_idle_down, 100, 200), // Mostra um personagem em uma posição específica
   // SPEAKER("Narrador"),
    TEXT("Nosso herói está triste hoje."),
    IMAGE(noone), // Oculta a imagem (definindo o sprite como 'noone')
    TEXT("A floresta sumiu!"),
    SET_UI(true, true), // Traz a caixa de diálogo de volta
    TEXT("É melhor eu falar com alguém sobre isso...")
];

global.topics[$ "cutscene"] = [

    SET_UI(false, false), 
    
    IMAGE(spr_storyboard6,230,50),
    TEXT("Era só mais um dia normal, uma tarde ensolarada em que eu e Cármem brincávamos de jogar bola."),
    IMAGE_FADE_OUT(0.02),
    IMAGE(spr_storyboard4,230,50),
    TEXT("Até que... ela jogou a bola com força demais."),
    
    IMAGE(spr_stporyboard5,230,50),
    TEXT("A bola passou direto por cima do muro e caiu naquela casa     velha do fim da rua."),
    TEXT("Aquela que todo mundo diz que é 'assombrada'... mas eu acho que não é. Acho."),
    
	IMAGE(spr_storyboard7,230,50),
    TEXT("-Você acha que tem fantasmas aqui?"),
    TEXT("-Fantasma não...só baratas, ratos e talvez morcegos..."),
    
    IMAGE(spr_storyboard7,230,50),
    TEXT("Revistamos a sala, olhamos sob os móveis, abrimos gavetas... nada da bola."),
    TEXT("-Ei, olha! - apontei."),
  
    IMAGE(spr_storyboard1,230,50),
    TEXT("No canto, havia um computador bem antigo. E... estava ligado?"),
	IMAGE(spr_storyboard2, 230,50),
	IMAGE(spr_storyboard3, 230,50)
];