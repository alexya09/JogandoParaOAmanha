global.topics = {};

global.topics[$ "inicial"] = [
	SET_UI(true, true),
	SPEAKER(" Camila ",PortraitCamila, PORTRAIT_SIDE.PORTRAITRIGHT),
	TEXT("...onde estamos?"),
	SPEAKER(" Carmen ",PortraitCarmen, PORTRAIT_SIDE.PORTRAITLEFT),
	TEXT("Eu não sei..."),
	TEXT("E se testarmos as portas? Talvez exista uma saída.")
];	

global.topics[$ "fase1e2"] = [
	SET_UI(true, true),

	SPEAKER(" Carmen ", PortraitCarmen, PORTRAIT_SIDE.PORTRAITLEFT),
	TEXT("Uff, conseguimos."),
	TEXT("Agora a gente pode ir embora?"),

	SPEAKER(" Camila ", PortraitCamila, PORTRAIT_SIDE.PORTRAITRIGHT),
	TEXT("Alô! Conseguimos, podemos ir embora agora?"),
	
	SPEAKER(" ??? ", megafone_inativo_1, PORTRAIT_SIDE.PORTRAITLEFT),
	TEXT("..."),


	SPEAKER(" Carmen ", PortraitCarmen, PORTRAIT_SIDE.PORTRAITLEFT),
	TEXT("Nenhuma dessas portas parece ser a saída…"),

	SPEAKER(" Camila ", PortraitCamila, PORTRAIT_SIDE.PORTRAITRIGHT),
	TEXT("Temos que tentar."),
	TEXT("Ainda tem duas portas, alguma deve ser a saída!"),
];

global.topics[$ "dicas"] = [
	SET_UI(true, true),
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

global.topics[$ "erradofase3"] = [
	TEXT("     Hm...isso não parece certo")
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
	
	SET_UI(false, true), 
	SPEAKER("Fantasma"),
	TEXT("OooOOoO... Meu texto está flutuando!"),
	
	
	SET_UI(true, true), 
	SPEAKER("Herói"),
	TEXT("Uau! Que truque legal!"),

	TEXT("Como você fez isso?") 
];

global.topics[$ "minha_cena_com_imagem"] = [
    SET_UI(false, false), 
    IMAGE(spr_camila_idle_down), 
    TEXT("Olhe para esta floresta mágica!"),
    IMAGE(spr_camila_idle_down, 100, 200),
   
    TEXT("Nosso herói está triste hoje."),
    IMAGE(noone),
    TEXT("A floresta sumiu!"),
    SET_UI(true, true), 
    TEXT("É melhor eu falar com alguém sobre isso...")
];

global.topics[$ "cutscene"] = [
    SET_UI(false, false), 
    
    IMAGE(spr_storyboard6, 230, 50),
    CUTSCENE_TEXT("Era só mais um dia normal, uma tarde ensolarada em que eu e Cármem brincávamos de jogar bola."),
    
    IMAGE(spr_storyboard4, 230, 50),
    CUTSCENE_TEXT("Até que... ela jogou a bola com força demais."),
    
    IMAGE(spr_stporyboard5, 230, 50),
    CUTSCENE_TEXT("A bola passou direto por cima do muro e caiu naquela casa   velha do fim da rua."),
    CUTSCENE_TEXT("Aquela que todo mundo diz que é 'assombrada'... mas eu acho que não é. Acho."),
   
    IMAGE(spr_storyboard7, 230, 50),
    CUTSCENE_TEXT("-Você acha que tem fantasmas aqui?"),

    CUTSCENE_TEXT("-Fantasma não...só baratas, ratos e talvez morcegos..."),
    
    IMAGE(spr_storyboard7, 230, 50),
    CUTSCENE_TEXT("Revistamos a sala, olhamos sob os móveis, abrimos gavetas... nada da bola."),
    
    CUTSCENE_TEXT("-Ei, olha! - apontei."),
  
    IMAGE(spr_storyboard1, 230, 50),
    CUTSCENE_TEXT("No canto, havia um computador bem antigo. E... estava ligado?"),
    
];

global.topics[$ "inicial2"] = [
	SET_UI(true, true),

	SPEAKER(" Camila ", PortraitCamila, PORTRAIT_SIDE.PORTRAITRIGHT),
	TEXT("Ugh, ai... que tontura."),

	SPEAKER(" Carmen ", PortraitCarmen, PORTRAIT_SIDE.PORTRAITLEFT),
	
	TEXT("MEU DEUS DO CÉU!"),

	SPEAKER(" Camila ", PortraitCamila, PORTRAIT_SIDE.PORTRAITRIGHT),
	TEXT("..?"),



	SPEAKER(" Carmen ", PortraitCarmen, PORTRAIT_SIDE.PORTRAITLEFT),
	TEXT("Que lugar maluco é esse? Tanta luz que \ndói o olho e..."),
	TEXT("MEU DEUS! Suas roupas!"),

	SPEAKER(" Camila ", PortraitCamila, PORTRAIT_SIDE.PORTRAITRIGHT),
	TEXT("..! As suas também mudaram!"),
	TEXT("Aquele computador...ele nos trouxe aqui?"),

	SPEAKER(" Carmen ", PortraitCarmen, PORTRAIT_SIDE.PORTRAITLEFT),
	TEXT("Será que a gente morreu?"),

	SPEAKER(" Camila ", PortraitCamila, PORTRAIT_SIDE.PORTRAITRIGHT),
	TEXT("Vira essa boca pra lá!"),

	SPEAKER(" Camila ", PortraitCamila, PORTRAIT_SIDE.PORTRAITRIGHT),
	TEXT("Vamos procurar um caminho"),
	GOTO("entrada_vilao")
	
];

global.topics[$ "interacao_carmen"] = [
	SET_UI(true, true),

	SPEAKER(" Carmen ", PortraitCarmen, PORTRAIT_SIDE.PORTRAITLEFT),
	TEXT("E aí, achou algo? Eu não vi nadinha."),

	SPEAKER(" Camila ", PortraitCamila, PORTRAIT_SIDE.PORTRAITRIGHT),
	TEXT("Ainda não..."),

	SPEAKER(" Carmen ", PortraitCarmen, PORTRAIT_SIDE.PORTRAITLEFT),
	TEXT("Será que quando sairmos daqui eu posso levar esse casacão? Gostei dele!"),

	SPEAKER(" Camila ", PortraitCamila, PORTRAIT_SIDE.PORTRAITRIGHT),

	TEXT("Só você mesmo..."),
];


global.topics[$ "entrada_vilao"] = [
	SET_UI(true, true),
	
	
	SPEAKER(" ??? ", megafone_inativo_1, PORTRAIT_SIDE.PORTRAITLEFT),
	TEXT("O-oi, oi, esse som aqui tá ligado?"),
	TEXT("Minha tela está embaçada ou vocês são \npequenininhas assim mesmo?"),

	SPEAKER(" Carmen ", PortraitCarmen, PORTRAIT_SIDE.PORTRAITLEFT),
	TEXT("EI!"),

	SPEAKER(" ??? ", megafone_inativo_1, PORTRAIT_SIDE.PORTRAITLEFT),
	TEXT("Então vocês são as intrusinhas...\nentraram aqui sem serem chamadas...\nocupando todo o meu espaço?"),

	SPEAKER(" Camila ", PortraitCamila, PORTRAIT_SIDE.PORTRAITRIGHT),
	TEXT("Só queremos ir embora! Não queremos \nincomodar."),

	SPEAKER(" ??? ", megafone_inativo_1, PORTRAIT_SIDE.PORTRAITLEFT),
	TEXT("Então meu mundo não é bom o suficiente \npra vocês?"),
	TEXT("Vocês é que não conseguiriam entender a grandiosidade de tudo aqui, nem se\ntentassem muito!"),
	TEXT("Eu sou o bug! E esse é meu reino!"),

	SPEAKER(" Carmen ", PortraitCarmen, PORTRAIT_SIDE.PORTRAITLEFT),
	TEXT("..."), 

	SPEAKER(" bug ", megafone_inativo_1, PORTRAIT_SIDE.PORTRAITLEFT),
	TEXT("Olha, vou dar uma chance pra vocês."),
	TEXT("Vou abrir uma das portas...se passarem \npelo desafio, estarão mais perto da \nliberdade."),
	TEXT("Se não passarem...ficarão presas lá pra sempre!"),
	TEXT("Boa sorte, intrusinhas!"),
];


global.topics[$ "confronto"] = [
    SET_UI(true, true),

    SPEAKER(" Carmen ", PortraitCarmen, PORTRAIT_SIDE.PORTRAITLEFT),
    TEXT("Aqui parece ser o núcleo do sistema, \nacho que já é o final... Espera, ali é o bug??"),

    SPEAKER(" Camila ", PortraitCamila, PORTRAIT_SIDE.PORTRAITRIGHT),
    TEXT("Parece que sim, e ele também parece \nestar nos encarando"),

    SPEAKER(" bug ", PortraitVilao2, PORTRAIT_SIDE.PORTRAITLEFT),
    TEXT("VOCÊS!!! EU JÁ ESTOU CANSADO DE VOCÊS!!!"),
    TEXT("Vocês estragaram tudo! Meus algoritmos estão bagunçados, minhas váriaveis não fazem sentido"),
    TEXT("E agora, pra piorar, ainda chegaram no \ncoração da minha máquina. DA MINHA CASA!"),

    SPEAKER(" Camila ", PortraitCamila, PORTRAIT_SIDE.PORTRAITRIGHT),
    TEXT("Também cansamos de você, só queremos \nir pra casa, sair daqui."),

    SPEAKER(" bug ", PortraitVilao2, PORTRAIT_SIDE.PORTRAITLEFT),
    TEXT("HAHAHAHA, sair? Quem me dera! Mas não \npodem..."),
    TEXT("Pra sair daqui, só há UMA maneira, mas \nvocês não tem o nível lógico necessário."),

    SPEAKER(" Carmen ", PortraitCarmen, PORTRAIT_SIDE.PORTRAITLEFT),
    TEXT("Como assim? Chegamos tão longe, aposto que conseguimos!"),

    SPEAKER(" bug ", PortraitVilao2, PORTRAIT_SIDE.PORTRAITLEFT),
    TEXT("Vocês deram sorte, garotas ingênuas. \nMas agora só sorte não bastará."),

    SPEAKER(" Camila ", PortraitCamila, PORTRAIT_SIDE.PORTRAITRIGHT),
    TEXT("Mas então nos diga, como provamos ser \ncapazes?"),

    SPEAKER(" bug ", PortraitVilao2, PORTRAIT_SIDE.PORTRAITLEFT),
    TEXT("Bem, se não querem me ouvir, terei que \nprovar para vocês!"),
    TEXT("Para poder sair daqui, vocês tem que \npelo menos conseguir me ganhar em um..."),
    TEXT("!!!! DEBATE LÓGICO !!!!"),

    GOTO("debate_introducao")
];

global.topics[$ "debate_introducao"] = [
    SET_UI(true, true),

    SPEAKER(" Camila ", PortraitCamila, PORTRAIT_SIDE.PORTRAITRIGHT),
    TEXT("Hmm, como será que vai ser isso?"),

    SPEAKER(" Carmen ", PortraitCarmen, PORTRAIT_SIDE.PORTRAITLEFT),
    TEXT("Não sei, mas sei que vamos conseguir, \naprendemos tudo o que precisávamos!"),

    SPEAKER(" bug ", PortraitVilao2, PORTRAIT_SIDE.PORTRAITLEFT),
    TEXT("Vocês nunca conseguirão, isso não vai \nser fácil como variáveis e essas coisas!"),
    TEXT("Vou falar frases incompletas do sistema, vocês nunca conseguirão desvendá-las"),

    GOTO("debate")
];

global.topics[$ "debate"] = [
    SET_UI(true, true),

    SPEAKER(" bug ", PortraitVilao2, PORTRAIT_SIDE.PORTRAITLEFT),
    
    CHOICE("Vamos ver então! Já que vocês \naprenderam variáveis, o número 4.5 pode ser float ______ int!",
        OPTION("ou", "Resposta_Errada1"),
        OPTION("e", "Resposta_Errada1"),
        OPTION("mas não", "Resposta_Certa1")
    )
];

global.topics[$ "Resposta_Errada1"] = [
    SET_UI(true, true),
    SPEAKER(" bug ", PortraitVilao2, PORTRAIT_SIDE.PORTRAITLEFT),
    TEXT("Essa era fácil, tentem de novo!"),
    GOTO("debate")
];

global.topics[$ "Resposta_Certa1"] = [
    SET_UI(true, true),

    SPEAKER(" bug ", PortraitVilao2, PORTRAIT_SIDE.PORTRAITLEFT),
    TEXT("Essa era fácil, a próxima que vai acabar com vocês!"),
    CHOICE("Quero ver então, se um dia está nublado, _____ ele não está ensolarado",
        OPTION("mas", "Resposta_Errada2"),
        OPTION("então", "Resposta_Certa2"),
        OPTION("somente", "Resposta_Errada2")
    )
];

global.topics[$ "Resposta_Errada2"] = [
    SET_UI(true, true),
    SPEAKER(" bug ", PortraitVilao2, PORTRAIT_SIDE.PORTRAITLEFT),
    TEXT("Errado! Tente novamente..."),
    GOTO("Resposta_Certa1")
];

global.topics[$ "Resposta_Certa2"] = [
    SET_UI(true, true),

    SPEAKER(" bug ", PortraitVilao2, PORTRAIT_SIDE.PORTRAITLEFT),
    TEXT("Vocês até que levam jeito, vamos ver até onde isso vai"),
    CHOICE("Agora para finalizar vocês, vocês _____ podem ser meninas e programadoras!!!",
        OPTION("Não", "Resposta_Final_Errada"),
        OPTION("Nunca", "Resposta_Final_Errada"),
        OPTION("Jamais", "Resposta_Final_Errada")
    )
];

global.topics[$ "Resposta_Final_Errada"] = [
    SET_UI(true, true),

    SPEAKER(" Carmen ", PortraitCarmen, PORTRAIT_SIDE.PORTRAITLEFT),
    TEXT("Espera ai Camila, isso está errado! Claro que podemos!"),

    SPEAKER(" Camila ", PortraitCamila, PORTRAIT_SIDE.PORTRAITRIGHT),
    TEXT("Verdade, e provamos isso várias vezes, bug, você está ERRADO"),

    SPEAKER(" bug ", PortraitVilao3, PORTRAIT_SIDE.PORTRAITLEFT),
    TEXT("Errado? Eu? Mas como pode?"),
    TEXT("Vocês realmente me surpreenderam várias vezes, mas..."),
    TEXT("Espera, não pode ser \ERROR–ERROR–ERROR…"),
    TEXT("Sistema reiniciando, sistema reiniciando"),
	
];

global.topics[$ "fase4_carmen"] = [
	SET_UI(true, true),
	SPEAKER(" Carmen ", PortraitCarmen, PORTRAIT_SIDE.PORTRAITLEFT),
	TEXT("Camila, olha o tamanho disso! O Bug tá furioso, acho que chegamos no núcleo."),
	TEXT("Relaxa, a gente já domina a lógica. Vamos mostrar pra esse erro quem é que manda!"),
];

global.topics[$ "generico_carmen"] = [
	SET_UI(true, true),
	SPEAKER(" Carmen ", PortraitCarmen, PORTRAIT_SIDE.PORTRAITLEFT),
	TEXT("Eu acho que esse Bug fala demais e programa de menos. A gente vai vencer ele rapidinho!"),
	
];