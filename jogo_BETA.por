programa
{
	inclua biblioteca Texto --> t
	inclua biblioteca Util  --> u
	funcao inicio()
	{
	cadeia vila = "          _______\n" + " _______ /_______\\" + "\n/_______\\|#  _ ; |" + "\n|   _ ##||L]| |[T|\n|[]|{|[]||__|_|__|" + "\n|\\_|_|__|"
	cadeia morreu = "oooooo     oooo                                                                                                      .o. \n  888.     .8                                                                                                        888 \n   888.   .8     .ooooo.   .ooooo.   .ooooo.     ooo. .oo.  .oo.    .ooooo.  oooo d8b oooo d8b  .ooooo.  oooo  oooo  888 \n    888. .8     d88   88b d88    Y8 d88   88b     888P Y88bP Y88b  d88   88b  888  8P  888  8P d88   88b  888   888  Y8P \n     888.8      888   888 888       888ooo888     888   888   888  888   888  888      888     888ooo888  888   888   8  \n      888       888   888 888    o8 888     o     888   888   888  888   888  888      888     888     o  888   888   o  \n       8         Y8bod8P   Y8bod8P   Y8bod8P     o888o o888o o888o  Y8bod8P  d888b    d888b     Y8bod8P    V88V V8P  Y8P"
	cadeia n = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
	cadeia cod_fas = "0" //sditc, cfsad, ytagp, gdtim
	inteiro esqu_stat = 0, ara_stat = 0, ataq_AEC //acerta, erra ou crítico
	inteiro inim_hp = 10, inim_dmg = 2
	inteiro luta = 0, turno = 1
	cadeia acao_mun = ""
	inteiro cobra = 0, aranha = 0, esqueleto = 1
	inteiro armadura, armad_eq = 0
	cadeia mid_fight = "0"
	cadeia f_be = " _____ _                 _                                         ______      _        \n |  ___(_)               | |                                        | ___ \\    | |       \n| |_   _ _ __ ___     __| | __ _  __   _____ _ __ ___  __ _  ___   | |_/ / ___| |_ __ _ \n|  _| | |  _   _ \\   / _  |/ _  | \\ \\ / / _ \\  __/ __|/ _  |/ _ \\  | ___ \\/ _ \\ __/ _  | \n| |   | | | | | | | | (_| | (_| |  \\ V /  __/ |  \\__ \\ (_| | (_) | | |_/ /  __/ |_ (_| | \n\\_|   |_|_| |_| |_|  \\__,_|\\__,_|   \\_/ \\___|_|  |___/\\__,_|\\___/  \\____/ \\___|\\__\\__,_|"
	inteiro fim = 0
	inteiro especificar = 0
	inteiro arma = 0
	inteiro dano = 3
	inteiro dmg_espada = 2
	inteiro matou = 1
	inteiro nivel = 1
	inteiro sistema = 1
	inteiro max_HP = 5
	inteiro HP = 5
	inteiro max_MP = 5
	inteiro MP = 5
	inteiro inimigo, it_ReMN, it_ReHP = 0, it_MoreHP, it_MoreMN, it_fujir
	inteiro espada = 0
	inteiro besta = 2
	inteiro arco = 3
	inteiro flecha = 5
	inteiro cenario = 1
	cadeia nome = ""
	cadeia pronto
	cadeia missao = "Converse com a elfa para continuar a aventura"
	inteiro momento = 0
	inteiro tecla
	inteiro n_nome = 0
	inteiro final_VBeta = 0
	cadeia ok 
	inteiro exp = 0, exp_up = 10
	inteiro esco
	cadeia it_col = "ooooo     .                                                      oooo                .                   .o8            \n 888    .o8                                                       888              .o8                   888            \n 888  .o888oo  .ooooo.  ooo. .oo.  .oo.       .ooooo.   .ooooo.   888   .ooooo.  .o888oo  .oooo.    .oooo888   .ooooo.  \n 888    888   d88   88b  888P Y88bP Y88b     d88    Y8 d88   88b  888  d88   88b   888    P  )88b  d88   888  d88   88b \n 888    888   888ooo888  888   888   888     888       888   888  888  888ooo888   888    .oP 888  888   888  888   888 \n 888    888 . 888    .o  888   888   888     888   .o8 888   888  888  888    .o   888 . d8(  888  888   888  888   888 \no888o    888   Y8bod8P  o888o o888o o888o     Y8bod8P   Y8bod8P  o888o  Y8bod8P     888   Y888  8o  Y8bod88P   Y8bod8P "
	cadeia acao_inv = "0"
	cadeia pressione = "\n _____    _____    _______    ________   ________   __   ______   __    __    _______\n|  __ \\  | ___ \\  /   __  \\  /   ____/  /   ____/  |  | |  __  | |  \\  |  |  /   __  \\ \n| |__) ) ||___) ) |  |__|_/  |  (____   |  (____   |  | | |  | | |   \\ |  |  |  |__|_/\n|  ___/  |  __ (  |  \\____   \\_____  \\  \\_____  \\  |  | | |__| | |    \\|  |  |  \\____ \n|_|      |_|  \\_\\ \\______/   /_______/  /_______/  |__| |______| |_|\\_____|  \\______/"
	cadeia esc_HP = "\n ____    ____    ________    ___    ___     __    __   _____\n|  _ \\  / _  |  |  ____  |   \\  \\__/  /    |  |__|  | |  __ \\ \n| | \\ \\/ / | |  | |____| |    \\      /     |   __   | | |__) )\n| |  \\  /  | |  |  ____  |    /  __  \\     |  |  |  | |  ___/\n|_|   \\/   |_|  |_|    |_|   /__/  \\__\\    |__|  |__| |_|"
	cadeia up = "\n		  __   __   _____       /\\ \n		 |  | |  | |  __ \\     /  \\ \n		 |  | |  | | |__) )   /_  _\\ \n		 |  |_|  | |  ___/     |  |\n		  \\_____/  |_|         |__|"
	cadeia lvl = "\n		  __        _______    ___      ___   _______   __\n		 |  |      /   __  \\  |   \\    /   | /   __  \\ |  |\n		 |  |      |  |__|_/   \\   \\  /   /  |  |__|_/ |  |\n		 |  |___   |  \\___      \\   \\/   /   |  \\____  |  |___\n		 |______|  \\______/      \\______/    \\______/  |______|"
	escreva("         ________     _______      __    ______       ________     _______    ____    ____      ___      ___    ___     __    __     ______      ______")
	escreva("\n        /?  ____/    /{  __  \\    |~~|  |$ __  |     |! ____  \\   /* *__  \\  |* _ \\  / _  |    |,  \\    /   |  |   |   |  \\  |  |   |MP__  \\    |Y __{=|")
	escreva("\n        \\____ $?\\    | }|__|_/    )~~|  | |__|£|     |!|____) /   | *|__|_/  | | \\ \\/*/ | |     \\ ##\\  / ##/   |>:(|   |   \\ |HP|   | |  \\  \\   |||  | |	A Aventura")
	escreva("\n        /_______/    |{ \\____   _/~~/   |  __  |     |'|____) \\   | *\\____   | |  \\  /  | |      \\   \\/   /    |{| |   |+HP \\|  |   | |__/  /   |V|__| |    de um campones")
     escreva("\n         (anão)      \\______/  (___/    |_|  |_|     |________/   \\______/   |_|   \\/   |_|       \\______/     |___|   |_|\\_____|   |______/    |______|         				BETA")
     escreva("\n        Um jogo onde sua criatividade se desenvolve imaginando o mundo mágico\n                 pressione ENTER                   (ENTER = START)\n")
     leia(pronto)
     enquanto(pronto == ""){
     	enquanto(momento == 0){
     	escreva(n, " Insira um código de fase\n")
     	leia(cod_fas)
     	enquanto(falso == (n_nome > 0 e n_nome <= 17)){
     		escreva("\n\n\n\n\n\n\n\n Informe seu nome (1-17 letras) \n")
     	leia(nome)
     	n_nome = t.numero_caracteres(nome)
     	}
     	se(cod_fas != "gdtim"){
     	se(cod_fas != "sditc"){
     		se(cod_fas != "cfsad"){
     		se(n_nome == 0 ou n_nome > 100){
     		escreva("\n\n\n\n\n\n Informe seu nome (1-17 letras) \n\n")
     	leia(nome)
     	n_nome = t.numero_caracteres(nome)
     	u.aguarde(10)
     	}enquanto(n_nome <= 0 ou n_nome >= 18){
     		escreva(n, " Informe seu nome (1-17 letras) \n\n")
     	leia(nome)
     	n_nome = t.numero_caracteres(nome)
     	u.aguarde(10)
     		}
     		momento = 2000
     	se(n_nome >= 6 e n_nome <= 11){
     	momento = 2000
     	enquanto(momento == 2000){
     		escreva("\n\n\n\n\n\n\n\n Era uma vez, em uma vila pacífica, uma pequena pessoa chamada ")
     		escreva(nome)
     		escreva(", era um(a) fazendeiro(a) que		|   |              Até que... Um portal se abriu, com um aventureiro saindo dele pedindo ajuda, ele era pequeno,\n adorava caçar no bosque ao lado de sua casa, perto das montanhas e do lado do lago de pesca")
     		escreva("			|   |             barbudo, usando um machado e uma armadura rara")
     	
     		escreva("\n	    ____    ________      __   __   __   _____     ________       ___     ____    __     ____     __    __    ______   _____    ________") //1-ajuda 2-ignora
     		escreva("\n	   /    |  |  ____  |    |  | |  | |  | |  __ \\   |  ____  |     /  /    / _  \\  |  |   /  __\\   |  \\  |  |  |  __  | | ___ \\  |  ____  |")
     		escreva("\n	  /__|  |  | |____| |    )  | |  | |  | | |  \\ \\  | |____| |    /  /     \\__/ /  |  |  /  /  _   |   \\ |  |  | |  | | ||___) ) | |____| |")
     		escreva("\n	     |  |  |  ____  |  _/  /  |  |_|  | | |__/ /  |  ____  |   /  /      __/ /_  |  |  \\  \\_| |  |    \\|  |  | |__| | |  __ (  |  ____  |") 
     		escreva("\n	     |__|  |_|    |_| (___/   \\_______/ |_____/   |_|    |_|  /__/      |______| |__|   \\_____|  |_|\\_____|  |______| |_|  \\_\\ |_|    |_|\n")
     		leia(pronto)
     		u.aguarde(10)
     		se(pronto == "2"){
     			escreva("\n ", nome, " não se encomoda com sua presença e continua sua vida pacífica						|   |	   	   Em seguida uma elfa aparece socorrendo ele e o levanto de volta sem ver sua silueta\n Final 1 'FDP'\n")
     			escreva("\n	   _______   __    ___    ___")
     			escreva("\n	  |:/_____| |  |  |   \\  /]: |")
     			escreva("\n	  | |___    |  |  |  :(\\/    |")
     			escreva("\n	  | ]:__|   |;(|  |  |\\  /|  |")
     			escreva("\n	  |__|      |__|  |__| \\/ |__|")
     			momento = 1000
     		}se(pronto == "1"){
     		escreva("\n\n\n\n\n\n Nesse momento já percebeu que sua vida pacífica estava no fim. Mesmo assim ele decide ajudar		|   |	  Repentinamente uma elfa de orelhas pontiacudas, cabelo loiro de olhos azuis aparece, porém, fica em silêncio \ntirando a parte da armadura de seus braços e usando uma atatudura e enfaixando eles		        |   |	 por um momento, logo você nota sua presença e se pergunta de onde vieram\n")
     		momento = 3
     		leia(ok)
     		}
     	}
     	}se(n_nome <= 3 e n_nome >= 1){
     	enquanto(momento == 2000){
     		escreva("\n\n\n\n\n\n\n\n Era uma vez, em uma vila pacífica, uma pequena pessoa chamada ")
     		escreva(nome)
     		escreva(", era um(a) fazendeiro(a) que			|   |              Até que... Um portal se abriu, com um aventureiro saindo dele pedindo ajuda, ele era pequeno,\n adorava caçar no bosque ao lado de sua casa, perto das montanhas e do lado do lago de pesca")
     		escreva("			|   |             barbudo, usando um machado e uma armadura rara")
     	
     		escreva("\n	    ____    ________      __   __   __    _____     ________       ___     ____    __     ____     __    __    ______   _____    ________") //1-ajuda 2-ignora
     		escreva("\n	   /    |  |  ____  |    |  | |  | |  |  |  __ \\   |  ____  |     /  /    / _  \\  |  |   /  __\\   |  \\  |  |  |  __  | | ___ \\  |  ____  |")
     		escreva("\n	  /__|  |  | |____| |    )  | |  | |  |  | |  \\ \\  | |____| |    /  /     \\__/ /  |  |  /  /  _   |   \\ |  |  | |  | | ||___) ) | |____| |")
     		escreva("\n	     |  |  |  ____  |  _/  /  |  |_|  |  | |__/ /  |  ____  |   /  /      __/ /_  |  |  \\  \\_| |  |    \\|  |  | |__| | |  __ (  |  ____  |") 
     		escreva("\n	     |__|  |_|    |_| (___/   \\_______/  |_____/   |_|    |_|  /__/      |______| |__|   \\_____|  |_|\\_____|  |______| |_|  \\_\\ |_|    |_|\n")
     		leia(pronto)
     		u.aguarde(10)
     		se(pronto == "2"){
     			escreva("\n ", nome, " não se encomoda com sua presença e continua sua vida pacífica						|   |	   	   Em seguida uma elfa aparece socorrendo ele e o levanto de volta sem ver sua silueta\n Final 1 'FDP'\n")
     			escreva("\n	   _______   __    ___    ___")
     			escreva("\n	  |:/ ____| |  |  |   \\  /]: |")
     			escreva("\n	  |  |__    |  |  |  :(\\/    |")
     			escreva("\n	  | ]:__|   |;(|  |  |\\  /|  |")
     			escreva("\n	  |__|      |__|  |__| \\/ |__|")
     			momento = 1000
     		}se(pronto == "1"){
     			escreva("\n\n\n\n\n\n\n Nesse momento já percebeu que sua vida pacífica estava no fim. Mesmo assim ele decide ajudar		|   |	  Repentinamente uma elfa de orelhas pontiacudas, cabelo loiro de olhos azuis aparece, porém, fica em silêncio \ntirando a parte da armadura de seus braços e usando uma atatudura e enfaixando eles		        |   |	 por um momento, logo você nota sua presença e se pergunta de onde vieram\n")
     			momento = 3
     			leia(ok)
     		}
     		}
     	}se(n_nome <= 17 e n_nome >= 12){
     	enquanto(momento == 2000){
     		escreva(n, " Era uma vez, em uma vila pacífica, uma pequena pessoa chamada ")
     		escreva(nome)
     		escreva(", era um(a) fazendeiro(a) que	|   |              Até que... Um portal se abriu, com um aventureiro saindo dele pedindo ajuda, ele era pequeno,\n adorava caçar no bosque ao lado de sua casa, perto das montanhas e do lado do lago de pesca")
     		escreva("			|   |             barbudo, usando um machado e uma armadura rara")
     	
     		escreva("\n	    ____    ________      __   __   __     _____     ________       ___     ____    __     ____     __    __    ______   _____    ________") //1-ajuda 2-ignora
     		escreva("\n	   /    |  |  ____  |    |  | |  | |  |   |  __ \\   |  ____  |     /  /    / _  \\  |  |   /  __\\   |  \\  |  |  |  __  | | ___ \\  |  ____  |")
     		escreva("\n	  /__|  |  | |____| |    )  | |  | |  |   | |  \\ \\  | |____| |    /  /     \\__/ /  |  |  /  /  _   |   \\ |  |  | |  | | ||___) ) | |____| |")
     		escreva("\n	     |  |  |  ____  |  _/  /  |  |_|  |   | |__/ /  |  ____  |   /  /      __/ /_  |  |  \\  \\_| |  |    \\|  |  | |__| | |  __ (  |  ____  |") 
     		escreva("\n	     |__|  |_|    |_| (___/    \\_____/    |_____/   |_|    |_|  /__/      |______| |__|   \\_____|  |_|\\_____|  |______| |_|  \\_\\ |_|    |_|\n")
     		leia(pronto)
     		u.aguarde(10)
     		se(pronto == "2"){
     			escreva("\n ", nome, " não se encomoda com sua presença e continua sua vida pacífica						|   |	      Em seguida uma elfa aparece socorrendo ele e o levanto de volta sem ver sua silueta\n Final 1 'FDP'\n")
     			escreva("\n	   _______   __    ___    ___")
     			escreva("\n	  |:/ ____| |  |  |   \\  /]: |")
     			escreva("\n	  |  |__    |  |  |  :(\\/    |")
     			escreva("\n	  | ]:__|   |;(|  |  |\\  /|  |")
     			escreva("\n	  |__|      |__|  |__| \\/ |__|")
     			momento = 1000
     		}
     		se(pronto == "1"){
     			escreva(n, " Nesse momento já percebeu que sua vida pacífica estava no fim. Mesmo assim ele decide ajudar		|   |	  Repentinamente uma elfa de orelhas pontiacudas, cabelo loiro de olhos azuis aparece, porém, fica em silêncio \ntirando a parte da armadura de seus braços e usando uma atatudura e enfaixando eles		        |   |	 por um momento, logo você nota sua presença e se pergunta de onde vieram\n")
     			momento = 3
     			leia(ok)
     		}
     	}}se(n_nome == 5 ou n_nome == 4){
     	u.aguarde(1)
     	enquanto(momento == 2000){
     		escreva(n, " Era uma vez, em uma vila pacífica, uma pequena pessoa chamada ")
     		escreva(nome)
     		escreva(", era um(a) fazendeiro(a) que		        |   |              Até que... Um portal se abriu, com um aventureiro saindo dele pedindo ajuda, ele era pequeno,\n adorava caçar no bosque ao lado de sua casa, perto das montanhas e do lado do lago de pesca")
     		escreva("		        	|   |             barbudo, usando um machado e uma armadura rara")
     	
     		escreva("\n	    ____    ________      __   __   __   _____     ________       ___     ____    __     ____     __    __    ______   _____    ________") //1-ajuda 2-ignora
     		escreva("\n	   /    |  |  ____  |    |  | |  | |  | |  __ \\   |  ____  |     /  /    / _  \\  |  |   /  __\\   |  \\  |  |  |  __  | | ___ \\  |  ____  |")
     		escreva("\n	  /__|  |  | |____| |    )  | |  | |  | | |  \\ \\  | |____| |    /  /     \\__/ /  |  |  /  /  _   |   \\ |  |  | |  | | ||___) ) | |____| |")
     		escreva("\n	     |  |  |  ____  |  _/  /  |  |_|  | | |__/ /  |  ____  |   /  /      __/ /_  |  |  \\  \\_| |  |    \\|  |  | |__| | |  __ (  |  ____  |") 
     		escreva("\n	     |__|  |_|    |_| (___/   \\______/  |_____/   |_|    |_|  /__/      |______| |__|   \\_____|  |_|\\_____|  |______| |_|  \\_\\ |_|    |_|\n")
     		leia(pronto)
     		u.aguarde(10)
     		se(pronto == "2"){
     			escreva("\n ", nome, " não se encomoda com sua presença e continua sua vida pacífica						|   |		  	   Em seguida uma elfa aparece socorrendo ele e o levanto de volta sem ver sua silueta\n Final 1 'FDP'\n")
     			escreva("\n	   _______   __    ___    ___")
     			escreva("\n	  |:/ ____| |  |  |   \\  /]: |")
     			escreva("\n	  |  |__    |  |  |  :(\\/    |")
     			escreva("\n	  | ]:__|   |;(|  |  |\\  /|  |")
     			escreva("\n	  |__|      |__|  |__| \\/ |__|")
     			momento = 1000
     		}
     		se(pronto == "1"){
     		escreva(n, " Nesse momento já percebeu que sua vida pacífica estava no fim. Mesmo assim ele decide ajudar		|   |	  Repentinamente uma elfa de orelhas pontiacudas, cabelo loiro de olhos azuis aparece, porém, fica em silêncio \ntirando a parte da armadura de seus braços e usando uma atatudura e enfaixando eles	 	        |   |	 por um momento, logo você nota sua presença e se pergunta de onde vieram\n")
     		momento = 3
     		leia(ok)
     		}
     		}
     	}
     	escreva(n, " Nesse momento já percebeu que sua vida pacífica estava no fim. Mesmo assim ele decide ajudar		|   |	  Repentinamente uma elfa de orelhas pontiacudas, cabelo loiro de olhos azuis aparece, porém, fica em silêncio \ntirando a parte da armadura de seus braços e usando uma atatudura e enfaixando eles	 	        |   |	 por um momento, logo você nota sua presença e se pergunta de onde vieram\n")
     		momento = 3
     		leia(ok)
     		enquanto(momento == 3){
     		escreva(n, "elfa:Obrigada por ajuda-ló, nós precisavamos de ajuda contra uma besta térrivel, venha conosco.		|   | (elfa) Aqui estamos, no vilarejo abandonado, infelizmente não é seguro, tive que usar o resto das minhas energias\n Sem você poder responder ela te puxa para o portal, você fica com um cala frio ao ver o local		|   |	no portal mas seu mundo não tem mana. Cuidado! (você se vira dando o soco mais forte da sua vida em um esqueleto)\n")
     		leia(ok)
     		escreva(n, "		!CRIT! - 10 HP\n	     esqueleto:0/10HP    +10 xp\n\n\n")
     		leia(ok)
     		para(inteiro i = 0; i < 5; i++){
     		escreva(n)
     		u.aguarde(200)
     		escreva(lvl, up, "        0 --> 1")
     		u.aguarde(450)
     		}
     		inteiro i = 0
     		nivel = 1
     		leia(ok)
     		para(i; i< 5 ; i++){
     		escreva(n)
     		u.aguarde(200)
     		escreva(esc_HP, up, "   3 --> 5  MaxHP")
     		u.aguarde(450)
     		}
     		matou = 1
     		leia(ok)
     		escreva(n, "elfa:E-e-eu demorei horas para derrotar apenas u-u-um deles, E VOCÊ DERROTOU COM UM SOCO!!! ...	|   |	 Talvez a gente tenha uma chance!!(você fala sobre um painel na sua frente que tem informações de si mesmo)\nvocê entende como que isso é díficil!? espero que você saiba porque... para sua informação...		|   |	 como assim? Espera... VOCÊ! VOCÊ É O ESCOLHIDO! (você entende a situação, e acha meio gliche, mesmo assim continua)\n")
     		leia(ok)
     		escreva(n, "(Você decide ver oque o esqueleto tinha de valor ou equipamento que possa usar)\n")
     		leia(ok)
     		escreva(n, "Você encontrou uma espada de pedra\nPegar?	1- sim(+2DANO)		2-não\n")
    			esco = 0
     		enquanto(esco != 1 e esco != 2){
     		leia(esco)
     		se(esco == 1){
     		espada = 1
     		escreva(" Você pegou 'espada de pedra'\n")
     		leia(ok)
     			}se(esco == 2){
     				espada = 1
     			escreva("\nvocê não pegou a espada\n")	
     			leia(ok)
     			escreva(n, "elfa:Pega esssa espada que encontrei naquele esqueleto (você pega contra sua vontade)")
     			leia(ok)
     			}se(esco != 1 e esco != 2){
     				escreva(n, "Faça uma escolha válida")
     				leia(ok)
     				escreva(n, "Você encontrou uma espada de pedra\nPegar?	1- sim(+2DANO)		2-não\n")
     			}
     			}
     		escreva(n, "precione 1 para acessar o inventário do seu personagem		'lembre de confirmar usando:ENTER'\n")
     		momento = 4
     		leia(acao_inv)
     		}enquanto(momento == 4){
     		enquanto(acao_inv != "0"){
     			escreva(n, " HP:", HP, "/", max_HP, "		Mp:", MP, "/", max_MP, "		armas:")
     			se(arma == 1){
     			escreva("espada de pedra")
     			escreva("		equipamento:nada		magias:nenhuma		matou:", matou, "		dano:", dano + 2, "(+2)")
     			}senao se(arma == 0){
     				escreva("		equipamento:nada		magias:nenhuma		matou:", matou, "		dano:", dano, "\n\n\n0:ir no mapa		1:equipar espada		2:indisponivel			3:indisponivel			4:indisponivel\n\n\n5:indisponivel		6:se curar			7:indisponivel			8:indisponivel			9:indisponivel\n")
     			escreva("\nPressione 1 para equipar a espada e depois confirme com ENTER\n")
     			u.aguarde(10)
     			leia(acao_inv)
     			se(acao_inv == "1"){
     			arma = 1
     			u.aguarde(10)
     			}
     			}
     	se(arma == 1){
     		escreva(n, " HP:", HP, "/", max_HP, "		Mp:", MP, "/", max_MP, "		armas:espada de pedra		equipamento:nada		magias:nenhuma		matou:", matou, "		dano:", dano + dmg_espada, "(+2)\n\n\n0:ir no mapa		1:equipar espada		2:indisponivel			3:indisponivel			4:indisponivel\n\n\n5:indisponivel		6:indisponivel		7:indisponivel			8:indisponivel			9:indisponivel\n")
     		}
     		escreva("		Pressione 0 para sair e depois confirme com ENTER\n")
     		leia(acao_inv)
     	}
     	momento = 5
     		}
     		}
     		}
     		momento = 5
     		enquanto(momento == 5){
    		escreva(n, "(elfa)Tem uma ferraria por perto venha comigo eu te levo até lá. (ela te guia mais calmamente,  	|   |	(Você a segue até a metade do caminho, você se destrai com uma lápide aberta por um momento,\npois ela sabe que você consegue defende-los sem problema algum, oque a faz sentir segura com você)	|   |	(guerreiro) estão indo aonde?? (você explica). Oh sem problema, vão sem mim, eu alcanço vocês.\n")
     	leia(ok)
     	escreva(n, "(Enquanto nosso héroi(na) caminha, fica curioso sobre a pápide aberta) 'você viu aquela tumba	|   |	(a elfa olha para você, se perguntando) elfa: Como assim? Não deveria estar assim, melhor tomar mais cuidado\nali atrás? Seria melhor tomar cuidado extra em relação a isso ou não?                        	|   |     mesmo, pode ser bem perigoso. (alguns segundos depois): elfa:um esqueleto! Socorro!!!")
     	leia(ok)
     	escreva(morreu)
     	leia(ok)
     	escreva(n, "você se sente derrubado, mas vê a elfa com uma poção")
     	leia(ok)
     	escreva(n, "elfa:aqui use ssa poção que estive mantendo comigo, você salvou minha vida, eu te devo essa		|   |	(Ela te ajuda despejando a poção em sua boca, nenezinho(a) da elfinha, cuticuti, quer a mamadeiro coisa fofa)\n													|   |	(você se irrita com o programador gostosão, que pega todas e também é um comédia)")
     	leia(ok)
     	escreva(n, "		HP 0.1/5 -- > HP 5/5")
     	leia(ok)
     	escreva(n, "É aqui, que a ação começa... DE VERDADE!!!")
     	luta = 1
     	inimigo = 1
     	esqu_stat = 1
     	arma = 1
     	inim_hp = 10
     	leia(ok)
     	enquanto(luta == 1){
     	se(turno == 1){
     		escreva(n, " Você:Hp", HP, "/", max_HP, "		Mp", MP, "/", max_HP)
     		se(arma == 1){
     			se(dano == 3){
     				dano += dmg_espada
     			}
     		}
     		se(esqu_stat == 2){
     		escreva("\nesqueleto:", inim_hp, "/10		dano:", inim_dmg, "		aperte 1 para atacar")
     		leia(mid_fight)
     		turno = 2
     		se(mid_fight == "2"){
     			esqu_stat = 1
     			turno = 2
     		}se(mid_fight == "1"){
     			inim_hp -= dano
     			escreva(n, "Você causou ", dano , " de dano")
     			turno = 2
     			leia(ok)
     		}
     	}se(esqu_stat == 1){
     		escreva("\n\nesqueleto:", inim_hp, "		aperte 1 para atacar e 2 para inspecionar")
     		leia(mid_fight)
     		se(mid_fight == "2"){
     			esqu_stat = 2
     			turno = 2
     			escreva(n, "você inspeciona o esqueleto")
     			leia(ok)
     		}se(mid_fight == "1"){
     			inim_hp -= dano
     			escreva(n, "Você causou ", dano , " de dano")
     			turno = 2
     			leia(ok)
     		}
     	}se(inim_hp <= 0){
     		matou += 1
     		escreva(n, "+5xp	")
     		leia(ok)
     		para(inteiro i = 0; i < 5; i++){
     			exp ++
     			luta = 0
     			u.aguarde(150)
     			escreva(n)
     			u.aguarde(150)
     			escreva("nivel:", nivel, "		exp:", exp, "/10")
     		}
     		leia(ok)
     	}
     	}se(inim_hp > 0){
     		se(turno == 2){
     	
     		ataq_AEC = u.sorteia(1, 10)
     		se(ataq_AEC <= 2){
     			escreva(n, "O esqueleto errou")
     			leia(ok)
     		}se(ataq_AEC >=3 e ataq_AEC <=8){
     			escreva(n, "Você levou ", inim_dmg, " de dano")
     			HP -= 2
			leia(ok)
     		}se(ataq_AEC >=9){
     			escreva("\n Dano crítico! ", inim_dmg, "(+1)")
     			HP -= 3
     			leia(ok)
     		}
     		turno = 1
     		}
     	}
     	}se(luta == 0){
     		escreva(n, "	Ao derrotar o esqueleto, você vê uma poção de cura equerendo ou não, você não tem escolha\n							e o programador não quer fazer coisa complicada")
     	it_ReHP = 1
     	momento = 6
     	especificar = 5
     	leia(ok)
     	}
     		}
     	}se(cod_fas == "gdtim"){
     		arma = 1
     		it_ReHP = 1
     		momento = 6
     		matou = 2
     		exp = 5
     		especificar = 5
     		u.aguarde(10)
     		HP = 1
     	}
     		arma = 1
     		it_ReHP = 1
     		momento = 6
     		matou = 2
     		exp = 5
     		especificar = 5
     		u.aguarde(10)
     		HP = 1
     		enquanto(momento == 6){
     		se(especificar == 5){
     			sistema = 10
     		escreva(n, "Aperte 1 para acessar o inventário\n")
     		especificar = 0
     		}
     		se(especificar != 1){
     		enquanto(acao_mun != "1"){
     			leia(acao_mun)
     			se(acao_mun != "1"){
     				escreva("\n\nDigite 1\n")
     			}
     			}
     		}
     		enquanto(acao_mun == "1"){
     			escreva(n, " exp:", exp, "/", exp_up, "		lvl:", nivel, "		HP:", HP, "/", max_HP, "		Mp:", MP, "/", max_MP, "		armas:espada de pedra		equipamento:nada		itens:poção de cura(", it_ReHP, ")		magias:nenhuma		matou:", matou, "		dano:", dano + 2, "(+2)\n\n\n0:ir no mapa		1:equipar espada		2:indisponivel			3:indisponivel			4:indisponivel\n\n\n5:indisponivel		6:se curar			7:indisponivel			8:indisponivel			9:indisponivel")
     		leia(acao_inv)
     		se(acao_inv == "0"){
     			se(sistema == 10){
     				escreva(n, "você deve se recuperar para sair")
     				leia(ok)
     			}senao se(sistema == 1){
     				momento = 7
     				acao_mun = "0"
     			}
     		}se(acao_inv == "1"){
     			se(arma == 1){
     			escreva(n, "A espada já está equipada")
     			leia(ok)
     			}se(arma != 1){
     				escreva(n, "Você equipou a espada")
     				leia(ok)
     			}
			}se(acao_inv == "2" ou acao_inv == "3" ou acao_inv == "4" ou acao_inv == "5" ou acao_inv == "7" ou acao_inv == "8" ou acao_inv == "9"){
				escreva(n, "				Ação indisponivel, pegue o item para usar\n																											animal")
     		leia(ok)
     		}se(acao_inv == "6"){
     			se(it_ReHP >= 1){
     			para(inteiro i = HP; i < max_HP; i++){
	     				escreva(n, "		", i, "/", max_HP)
	     				u.aguarde(200)
	     			}
	     			it_ReHP = 0
	     			escreva(n, "		5", "/", max_HP)
	     			HP = max_HP
	     			leia(ok)
     			}
     			sistema = 1
     			especificar = 1
     		}
     		}
     	}
     		enquanto(momento == 7){
     		enquanto(acao_mun == "0"){
     			escreva(n, "1:inventario			2:procurar inimigos			3:conversar com a elfa			4:indisponivel			-->->->5:ver suas missões<-<-<--")
     		leia(sistema)
     		se(sistema != 5){
     			se(especificar == 1){
     			escreva("Informe o valor 5 PARA FAZER OQUE DEVE")
     			sistema = 0
     			leia(ok)
     		}se(sistema == 5){
     			escreva(missao)
     			sistema = 0
     			especificar = 0
     			leia(ok)
     		}
     		se(especificar == 0){
     			se(sistema == 1){
     				acao_mun = "1"
     				enquanto(acao_mun == "1"){
     			escreva(n, " exp:", exp, "/", exp_up, "		lvl:", nivel, "		HP:", HP, "/", max_HP, "		Mp:", MP, "/", max_MP, "		armas:espada de pedra		equipamento:nada		itens:poção de cura(", it_ReHP, ")		magias:nenhuma		matou:", matou, "		dano:", dano + 2, "(+2)\n\n\n0:ir no mapa		1:equipar espada		2:indisponivel			3:indisponivel			4:indisponivel\n\n\n5:indisponivel		6:se curar			7:indisponivel			8:indisponivel			9:indisponivel\n")
     		leia(acao_inv)
     		se(acao_inv == "0"){
     				acao_mun = "0"
     		}se(acao_inv == "1"){
     			se(arma == 1){
     			escreva(n, "A espada já está equipada")
     			leia(ok)
     			}se(arma != 1){
     				escreva(n, "A espada foi equipada")
     				leia(ok)
     			}
			}se(acao_inv == "2" ou acao_inv == "3" ou acao_inv == "4" ou acao_inv == "5" ou acao_inv == "7" ou acao_inv == "8" ou acao_inv == "9"){
				escreva(n, "				Ação indisponivel, pegue o item para usar\n																											animal")
     		leia(ok)
     		}se(acao_inv == "6"){
     			se(it_ReHP >= 1){
     			para(inteiro i = HP; i < max_HP; i++){
     				escreva(n, "		", i, "/", max_HP)
     				u.aguarde(200)
     			}
     			it_ReHP = 0
     			escreva(n, "		5", "/", max_HP)
     			HP = max_HP
     			leia(ok)
     			}
     		}
     		}
     			}se(sistema == 2){
     				escreva(n, "		", nome, " saiu a procura de inimigos\n")
     				inimigo = u.sorteia(1, 5)
     				leia(ok)
     				se(inimigo >=3){
     					escreva(nome, " Encontrou um inimigo!")
     					leia(ok)
     					se(inimigo == 3){
     						escreva(" É um esqueleto !")
     						leia(ok)
     						enquanto(luta == 1){
     	se(turno == 1){
     		escreva(n, " Você:Hp", HP, "/", max_HP, "		Mp", MP, "/", max_HP)
     		se(arma == 1){
     			se(dano == 3){
     				dano += dmg_espada
     			}
     		}
     		se(esqu_stat == 2){
     		escreva("\nesqueleto:", inim_hp, "/10		dano:", inim_dmg, "		aperte 1 para atacar")
     		leia(mid_fight)
     		turno = 2
     		se(mid_fight == "2"){
     			esqu_stat = 1
     			turno = 2
     		}se(mid_fight == "1"){
     			inim_hp -= dano
     			escreva(n, "Você causou ", dano , " de dano")
     			turno = 2
     			leia(ok)
     		}
     	}se(esqu_stat == 1){
     		escreva("\n\nesqueleto:", inim_hp, "		aperte 1 para atacar e 2 para inspecionar")
     		leia(mid_fight)
     		se(mid_fight == "2"){
     			esqu_stat = 2
     			turno = 2
     			escreva(n, "você inspeciona o esqueleto")
     			leia(ok)
     		}se(mid_fight == "1"){
     			inim_hp -= dano
     			escreva(n, "Você causou ", dano , " de dano")
     			turno = 2
     			leia(ok)
     		}
     	}se(inim_hp <= 0){
     		matou += 1
     		escreva(n, "+5xp	")
     		leia(ok)
     		se(nivel != 11){
     		para(inteiro i = 0; i < 5; i++){
     			exp ++
     			luta = 0
     			u.aguarde(150)
     			escreva(n)
     			u.aguarde(150)
     			escreva("nivel:", nivel, "		exp:", exp, "/10")
     		}
     		leia(ok)
     		se(exp == exp_up){
     			para(inteiro i = 0; i<5; i++){
     				escreva(n)
     				u.aguarde(10)
     			escreva(nivel, up)
     			}
     			exp = exp % exp_up
     			nivel ++
     			leia(ok)
     			}
     	}se(nivel == 11){
     		escreva(n, "Nivel máximo por enquanto")
     	}
     	}
     	}se(inim_hp > 0){
     		se(turno == 2){
     	
     		ataq_AEC = u.sorteia(1, 10)
     		se(ataq_AEC <= 3){
     			escreva(n, "O esqueleto errou")
     			leia(ok)
     		}se(ataq_AEC >=4 e ataq_AEC <=8){
     			escreva(n, "Você levou ", inim_dmg, " de dano")
     			HP -= 2
     			leia(ok)
     		}se(ataq_AEC >=9){
     			escreva("\n Dano crítico! ", inim_dmg, "(+1)")
     			HP -= 3
     			leia(ok)
     		}
     		turno = 1
     		}
     	}
     	}
     					}
     				}se(inimigo == 4){
     					inim_hp = 15
     					inim_dmg = 1
     				}
     					se(aranha != 1){
     					escreva(" Você encontrou um novo inimigo!	Uma aranha gigante!")
     					aranha = 1
     					luta = 1
     					leia(ok)
     					}se(aranha == 1){
     						escreva(" Você encontrou uma aranha!")
     				}
     				enquanto(luta == 1){
     	se(turno == 1){
     		escreva(n, " Você:Hp", HP, "/", max_HP, "		Mp", MP, "/", max_HP)
     		se(arma == 1){
     			se(dano == 3){
     				dano += dmg_espada
     			}
     		}
     		se(ara_stat == 2){
     		escreva("\naranha:", inim_hp, "/10		dano:", inim_dmg, "		aperte 1 para atacar")
     		leia(mid_fight)
     		turno = 2
     		se(mid_fight == "2"){
     			esqu_stat = 1
     			turno = 2
     		}se(mid_fight == "1"){
     			inim_hp -= dano
     			escreva(n, "Você causou ", dano , " de dano")
     			turno = 2
     			leia(ok)
     		}
     	}se(ara_stat == 1){
     		escreva("\n\naranha:", inim_hp, "		aperte 1 para atacar e 2 para inspecionar")
     		leia(mid_fight)
     		se(mid_fight == "2"){
     			ara_stat = 2
     			turno = 2
     			escreva(n, "você inspeciona a aranha")
     			leia(ok)
     		}se(mid_fight == "1"){
     			inim_hp -= dano
     			escreva(n, "Você causou ", dano , " de dano")
     			turno = 2
     			leia(ok)
     		}
     	}se(inim_hp <= 0){
     		matou += 1
     		escreva(n, "+5xp	")
     		leia(ok)
     		para(inteiro i = 0; i < 5; i++){
     			exp ++
     			luta = 0
     			u.aguarde(150)
     			escreva(n)
     			u.aguarde(150)
     			escreva("nivel:", nivel, "		exp:", exp, "/", exp_up)
     		}
     		leia(ok)
     		se(exp >= exp_up){
     			se( falso == (nivel >= 11)){
     			para(inteiro i = 0; i<5; i++){
     				escreva(n)
     				u.aguarde(10)
     			escreva(nivel, up)
     			}
     			nivel++
     			exp = exp % exp_up
     			se(nivel == 2){
     			max_HP += 2
     			dano += 2
     			exp_up = 15
     			escreva(n, "nível:", nivel, "		exp:", exp, "/", exp_up)
     			leia(ok)
     			}se(nivel == 3){
    				max_HP += 2
     			dano += 2
     			exp_up = 25
     			escreva(n, "nível:", nivel, "		exp:", exp, "/", exp_up)
     			leia(ok)
     			}se(nivel == 4){
     			dano += 2
     			max_HP += 2
     			exp_up = 35
     			escreva(n, "nível:", nivel, "		exp:", exp, "/", exp_up)
     			leia(ok)
     			}se(nivel == 5){
     			max_HP += 2
     			dano += 2
     			exp_up = 50
     			escreva(n, "nível:", nivel, "		exp:", exp, "/", exp_up)
     			leia(ok)
    				}se(nivel == 6){
    				max_HP += 2
     			dano += 2
    				exp_up = 65
    				escreva(n, "nível:", nivel, "		exp:", exp, "/", exp_up)
     			leia(ok)
    				}se(nivel == 7){
    				max_HP +=2
    				dano += 2
    				exp_up = 80
    				escreva(n, "nível:", nivel, "		exp:", exp, "/", exp_up)
     			leia(ok)
     			}se(nivel == 8){
    				max_HP += 2
     			dano += 2
     			exp_up = 100
     			escreva(n, "nível:", nivel, "		exp:", exp, "/", exp_up,"	+2 PV	+2 DANO")
     			leia(ok)
     			}se(nivel == 9 ){
     				max_HP += 2
     			dano += 2
     			exp_up = 125
     			escreva(n, "nível:", nivel, "		exp:", exp, "/", exp_up,"	+2 PV	+2 DANO")
     			leia(ok)
     			}se(nivel == 10 ){
     				max_HP += 2
     			dano += 2
     			exp_up = 150
     			escreva(n, "nível:", nivel, "		exp:", exp, "/", exp_up,"	+2 PV	+2 DANO")
     			leia(ok)
     			}se(nivel == 11 ){
     				max_HP += 2
     			dano += 2
     			exp_up = 999999999
     			escreva(n, "nível:", nivel, "		exp:", exp, "/", exp_up,"	+2 PV	+2 DANO")
     			leia(ok)
     			escreva(n, "Nível máximo alcansado")
     			leia(ok)
     			}
     		}se(nivel >= 11){
     			escreva(n, "Nivel mámimo alcansado por enquanto")
     		}
     	}
     	}se(inim_hp > 0){
     		se(turno == 2){
     	
     		ataq_AEC = u.sorteia(1, 10)
     		se(ataq_AEC <= 3){
     			escreva(n, "A aranha errou")
     			leia(ok)
     		}se(ataq_AEC >=4 e ataq_AEC <=8){
     			escreva(n, "Você levou ", inim_dmg, " de dano")
     			HP -= 2
     			leia(ok)
     		}se(ataq_AEC >=9){
     			escreva("\n Dano crítico! ", inim_dmg, "(+1)")
     			HP -= 3
     			leia(ok)
     		}
     		turno = 1
     		}
     	}
     	}
     			}
     		}
     		}
     		se(acao_mun == "3"){
     			momento = 8
     			escreva(n, "elfa: venha eu te levo até lá.			Guerreiro esperem por mim!")
     			leia(ok)
     			escreva(n, "(Nossos aventureiros partem para a aventura, porém nosso(a) protagonista não se sente 	|   |	elfa: tudo bem ", nome, " a gente te espera a frente\nconfiante com seu equipamento atual e decide volta para de fato usar a ferraria	|   |")
     			leia(ok)
     		}
     		}
     		}
     		}enquanto(momento == 8){
     			escreva(n, "(Você da uma olhada na ferraria e encontra uma armadura enferrujada)")
     			leia(ok)
     			escreva(n, "Dano adicional de ferrujem: +1(você causa mais 1 de dano por veneno), HP: +2\n Você pega ela?	1 - sim 	2 - sim")
     			leia(esco)
     			se(esco != 1 e esco != 2){
     				escreva(n, "Espertinho, vai pega sim")
     				leia(ok)
     				esco = 1
     		}se(esco == 1 ou esco == 2){
     			escreva(n, "Nosso Aventureiro(a) pega a sua armadura e vai em busca de sua aventura")
     			leia(ok)
     		}
     		escreva(n, "Hora de se equipar	Pressione 1")
     		enquanto(acao_mun == "0"){
     			se(especificar == 0){
     			enquanto(especificar == 0){
     			escreva("\n1:inventario			2:procurar inimigos			3:conversar com a elfa			4:indisponivel				5:ver suas missões")
     		leia(acao_mun)
     		se(acao_mun == "1"){
     		especificar = 2
     		}
     			}
     			}se(acao_mun == "0"){
     			escreva(n, "1:inventario			2:procurar inimigos			3:conversar com a elfa			4:terminar versão beta		5:ver suas missões")
     			leia(acao_mun)
     			}
				se(acao_mun == "4"){
				se(especificar != 100){
				escreva(n, "Você ainda não equipou a armadura")
				}se(especificar == 100){
					para(inteiro i = 0; i <10; i++){
					escreva(n)
					u.aguarde(150)
					escreva(f_be)
					u.aguarde(200)
					}
				}
				}
     				enquanto(acao_mun == "1"){
     			escreva(n, " exp:", exp, "/", exp_up, "		lvl:", nivel, "		HP:", HP, "/", max_HP, "		Mp:", MP, "/", max_MP, "		armas:espada de pedra		equipamento:nada		itens:poção de cura(", it_ReHP, ")		magias:nenhuma		matou:", matou, "		dano:", dano + 2, "(+2)\n\n\n0:ir no mapa		1:equipar espada		2:armadura			3:indisponivel			4:indisponivel\n\n\n5:indisponivel		6:se curar			7:indisponivel			8:indisponivel			9:indisponivel\n")
     		leia(acao_inv)
			se(acao_inv == "2"){
				armadura = 0
				enquanto(armadura != 5){
				se(especificar == 2){
				escreva(n, "-->1-armadura enferrujada<--		2-##########		3-##########		4-##########		5-sair")
				leia(armadura)	
				se(armadura != 1){
				escreva(n, "pare de desobedecer")
				leia(ok)
				}se(armadura == 1){		
				escreva(n, "Você equipou a armadura")
				armad_eq = 1
				especificar = 100
				}
				}se(especificar != 2){
				escreva(n, "1-armadura enferrujada		2-##########		3-##########		4-##########		5-sair")
				leia(armadura)
				se(armadura == 1){
					se(armad_eq != 1){		
				escreva(n, "Você equipou a armadura")
				armad_eq = 1
				especificar = 100
					}se(armad_eq == 1){
					escreva(n, "Você já equipou a armadura")
					}
				}se(armadura != 5 e armadura != 1){
					escreva(n, "Você sabe que não pode")
				}
				}
				}
			}
     		se(acao_inv == "0"){
     				acao_mun = "0"
     		}se(acao_inv == "1"){
     			se(arma == 1){
     			escreva(n, "A espada já está equipada")
     			leia(ok)
     			}se(arma != 1){
     				escreva(n, "A espada foi equipada")
     				leia(ok)
     			}
			}
     			se(it_ReHP >= 1){
     			para(inteiro i = HP; i < max_HP; i++){
     				escreva(n, "		", i, "/", max_HP)
     				u.aguarde(200)
     			}
     			it_ReHP = 0
     			escreva(n, "		5", "/", max_HP)
     			HP = max_HP
     			leia(ok)
     			}
     			}
     		}
     			}se(sistema == 2){
     				escreva(n, "		", nome, " saiu a procura de inimigos\n")
     				inimigo = u.sorteia(1, 5)
     				leia(ok)
     				se(inimigo >=3){
     					escreva(nome, " Encontrou um inimigo!")
     					leia(ok)
     					se(inimigo == 3){
     						escreva(" É um esqueleto !")
     						leia(ok)
     						enquanto(luta == 1){
     	se(turno == 1){
     		escreva(n, " Você:Hp", HP, "/", max_HP, "		Mp", MP, "/", max_HP)
     		se(arma == 1){
     			se(dano == 3){
     				dano += dmg_espada
     			}
     		}
     		se(esqu_stat == 2){
     		escreva("\nesqueleto:", inim_hp, "/10		dano:", inim_dmg, "		aperte 1 para atacar")
     		leia(mid_fight)
     		turno = 2
     		se(mid_fight == "2"){
     			esqu_stat = 1
     			turno = 2
     		}se(mid_fight == "1"){
     			inim_hp -= dano
     			escreva(n, "Você causou ", dano , " de dano")
     			turno = 2
     			leia(ok)
     		}
     	}se(esqu_stat == 1){
     		escreva("\n\nesqueleto:", inim_hp, "		aperte 1 para atacar e 2 para inspecionar")
     		leia(mid_fight)
     		se(mid_fight == "2"){
     			esqu_stat = 2
     			turno = 2
     			escreva(n, "você inspeciona o esqueleto")
     			leia(ok)
     		}se(mid_fight == "1"){
     			inim_hp -= dano
     			escreva(n, "Você causou ", dano , " de dano")
     			turno = 2
     			leia(ok)
     		}
     	}se(inim_hp <= 0){
     		matou += 1
     		escreva(n, "+5xp	")
     		leia(ok)
     		se(nivel != 11){
     		para(inteiro i = 0; i < 5; i++){
     			exp ++
     			luta = 0
     			u.aguarde(150)
     			escreva(n)
     			u.aguarde(150)
     			escreva("nivel:", nivel, "		exp:", exp, "/10")
     		}
     		leia(ok)
     		se(exp == exp_up){
     			para(inteiro i = 0; i<5; i++){
     				escreva(n)
     				u.aguarde(10)
     			escreva(nivel, up)
     			}
     			exp = exp % exp_up
     			nivel ++
     			leia(ok)
     			}
     	}se(nivel == 11){
     		escreva(n, "Nivel máximo por enquanto")
     	}
     	}
     	}se(inim_hp > 0){
     		se(turno == 2){
     	
     		ataq_AEC = u.sorteia(1, 10)
     		se(ataq_AEC <= 3){
     			escreva(n, "O esqueleto errou")
     			leia(ok)
     		}se(ataq_AEC >=4 e ataq_AEC <=8){
     			escreva(n, "Você levou ", inim_dmg, " de dano")
     			HP -= 2
     			leia(ok)
     		}se(ataq_AEC >=9){
     			escreva("\n Dano crítico! ", inim_dmg, "(+1)")
     			HP -= 3
     			leia(ok)
     		}
     		turno = 1
     		}
     	}
     	}
     					}
     				}se(inimigo == 4){
     					inim_hp = 15
     					inim_dmg = 1
     				}
     					se(aranha != 1){
     					escreva(" Você encontrou um novo inimigo!	Uma aranha gigante!")
     					aranha = 1
     					luta = 1
     					leia(ok)
     					}se(aranha == 1){
     						escreva(" Você encontrou uma aranha!")
     				}
     				enquanto(luta == 1){
     	se(turno == 1){
     		escreva(n, " Você:Hp", HP, "/", max_HP, "		Mp", MP, "/", max_HP)
     		se(arma == 1){
     			se(dano == 3){
     				dano += dmg_espada
     			}
     		}
     		se(ara_stat == 2){
     		escreva("\naranha:", inim_hp, "/10		dano:", inim_dmg, "		aperte 1 para atacar")
     		leia(mid_fight)
     		turno = 2
     		se(mid_fight == "2"){
     			esqu_stat = 1
     			turno = 2
     		}se(mid_fight == "1"){
     			inim_hp -= dano
     			escreva(n, "Você causou ", dano , " de dano")
     			turno = 2
     			leia(ok)
     		}
     	}se(ara_stat == 1){
     		escreva("\n\naranha:", inim_hp, "		aperte 1 para atacar e 2 para inspecionar")
     		leia(mid_fight)
     		se(mid_fight == "2"){
     			ara_stat = 2
     			turno = 2
     			escreva(n, "você inspeciona a aranha")
     			leia(ok)
     		}se(mid_fight == "1"){
     			inim_hp -= dano
     			escreva(n, "Você causou ", dano , " de dano")
     			turno = 2
     			leia(ok)
     		}
     	}se(inim_hp <= 0){
     		matou += 1
     		escreva(n, "+5xp	")
     		leia(ok)
     		para(inteiro i = 0; i < 5; i++){
     			exp ++
     			luta = 0
     			u.aguarde(150)
     			escreva(n)
     			u.aguarde(150)
     			escreva("nivel:", nivel, "		exp:", exp, "/", exp_up)
     		}
     		leia(ok)
     		se(exp >= exp_up){
     			se( falso == (nivel >= 11)){
     			para(inteiro i = 0; i<5; i++){
     				escreva(n)
     				u.aguarde(10)
     			escreva(nivel, up)
     			}
     			nivel++
     			exp = exp % exp_up
     			se(nivel == 2){
     			max_HP += 2
     			dano += 2
     			exp_up = 15
     			escreva(n, "nível:", nivel, "		exp:", exp, "/", exp_up)
     			leia(ok)
     			}se(nivel == 3){
    				max_HP += 2
     			dano += 2
     			exp_up = 25
     			escreva(n, "nível:", nivel, "		exp:", exp, "/", exp_up)
     			leia(ok)
     			}se(nivel == 4){
     			dano += 2
     			max_HP += 2
     			exp_up = 35
     			escreva(n, "nível:", nivel, "		exp:", exp, "/", exp_up)
     			leia(ok)
     			}se(nivel == 5){
     			max_HP += 2
     			dano += 2
     			exp_up = 50
     			escreva(n, "nível:", nivel, "		exp:", exp, "/", exp_up)
     			leia(ok)
    				}se(nivel == 6){
    				max_HP += 2
     			dano += 2
    				exp_up = 65
    				escreva(n, "nível:", nivel, "		exp:", exp, "/", exp_up)
     			leia(ok)
    				}se(nivel == 7){
    				max_HP +=2
    				dano += 2
    				exp_up = 80
    				escreva(n, "nível:", nivel, "		exp:", exp, "/", exp_up)
     			leia(ok)
     			}se(nivel == 8){
    				max_HP += 2
     			dano += 2
     			exp_up = 100
     			escreva(n, "nível:", nivel, "		exp:", exp, "/", exp_up,"	+2 PV	+2 DANO")
     			leia(ok)
     			}se(nivel == 9 ){
     				max_HP += 2
     			dano += 2
     			exp_up = 125
     			escreva(n, "nível:", nivel, "		exp:", exp, "/", exp_up,"	+2 PV	+2 DANO")
     			leia(ok)
     			}se(nivel == 10 ){
     				max_HP += 2
     			dano += 2
     			exp_up = 150
     			escreva(n, "nível:", nivel, "		exp:", exp, "/", exp_up,"	+2 PV	+2 DANO")
     			leia(ok)
     			}se(nivel == 11 ){
     				max_HP += 2
     			dano += 2
     			exp_up = 999999999
     			escreva(n, "nível:", nivel, "		exp:", exp, "/", exp_up,"	+2 PV	+2 DANO")
     			leia(ok)
     			escreva(n, "Nível máximo alcansado")
     			leia(ok)
     			}
     		}se(nivel >= 11){
     			escreva(n, "Nivel mámimo alcansado por enquanto")
     		}
     	}
     	}se(inim_hp > 0){
     		se(turno == 2){
     	
     		ataq_AEC = u.sorteia(1, 10)
     		se(ataq_AEC <= 3){
     			escreva(n, "A aranha errou")
     			leia(ok)
     		}se(ataq_AEC >=4 e ataq_AEC <=8){
     			escreva(n, "Você levou ", inim_dmg, " de dano")
     			HP -= 2
     			leia(ok)
     		}se(ataq_AEC >=9){
     			escreva("\n Dano crítico! ", inim_dmg, "(+1)")
     			HP -= 3
     			leia(ok)
     		}
     		turno = 1
     		}
     		}
     		}
     		}
     		}
     		}
     		}
     		}
     		}
     		}
     	}
     }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1479; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */