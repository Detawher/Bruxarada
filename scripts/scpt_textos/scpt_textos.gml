function scr_textos(){
switch npc_nome{
	case "cutscene_1":
 ds_grid_add_text("Onde eu estou?", spr_player_portrait, 0, "Frida");
 obj_dialogo.dialogo_action = true;
	break;
	case "cutscene_11":
 ds_grid_add_text("Tenho que sair \ndaqui.", spr_player_portrait, 0, "Frida");
 obj_dialogo.dialogo_action = true;
	break;
	case "ghost_tutorial":
 ds_grid_add_text("hum..", spr_player_portrait, 0, "Frida");
 obj_dialogo.dialogo_action = true;
	break;
	case "ghost_tutorial_1":
 ds_grid_add_text("Essa parede parece\nfina, quer tentar\natravessar?", spr_player_portrait, 0, "Frida");
 ds_grid_add_text("aperte (K ou C) para transformar.", spr_player_portrait, 2, "Frida");
 obj_dialogo.dialogo_action = true;
	break;
	case "ghost_medo":
 ds_grid_add_text("Chapéu?", spr_player_portrait, 0, "Frida");
 ds_grid_add_text("não ta vendo aqueles dentes afiados??", spr_chapeu_portrait, 0, "Chapeú");
 ds_grid_add_text("aquilo pode matar\numa pessoa!", spr_chapeu_portrait, 0, "Chapeú");
 ds_grid_add_text("mas você já está\nmorto...", spr_player_portrait, 0, "Frida");
 ds_grid_add_text("N-NÃO IMPORTA! \npisa neles logo!", spr_chapeu_portrait, 0, "Chapeú");
 obj_dialogo.dialogo_action = true;
	break;
	case "boss_jr":
 ds_grid_add_text("O que pensa que esta fazendo?", spr_boss_jr_portrair, 1, "BORIS ");
 ds_grid_add_text("Estou Procurando uma saida desse\ncastelo", spr_player_portrait, 0, "Frida");
 ds_grid_add_text("Eu sou o guardiao\ndesse castelo!", spr_boss_jr_portrair, 1, "BORIS ");
 ds_grid_add_text("Voce nunca vai sair\ndaqui!", spr_boss_jr_portrair, 1, "BORIS ");
 ds_grid_add_text("Olha, uma vaquinha", spr_chapeu_portrait, 0, "Chapéu");
  ds_grid_add_text("QUEM DISSE ISSO ?!", spr_boss_jr_portrair, 1, "BORIS ");
 
 obj_dialogo.dialogo_action = true;
	break;
	case "Double_jump":
 ds_grid_add_text("Você obteve a orbe do Pulo duplo, Agora consegue pular duas vezes", spr_player_portrait, 2, "Frida");
	 break;
	case "door_locked":
 ds_grid_add_text("A porta está fechada", spr_player_portrait, 2, "Frida");
 obj_dialogo.dialogo_action = true;
	break;
	case "alsapao_locked":
 ds_grid_add_text("O alçapão está trancado por um cadeado", spr_player_portrait, 2, "Frida");
 obj_dialogo.dialogo_action = true;
	break;
	case "alsapao_open":
 ds_grid_add_text("O Alçapão foi aberto", spr_player_portrait, 2, "Frida");
 obj_dialogo.dialogo_action = true;
	break;
	case "door_open":
 ds_grid_add_text("A porta foi\ndestrancada", spr_player_portrait, 2, "Frida");
 obj_dialogo.dialogo_action = true;
	break;
	case "door_subsolo_locked":
 ds_grid_add_text("A porta está trancada por 2 fechaduras", spr_player_portrait, 2, "Frida");
 obj_dialogo.dialogo_action = true;
	break;
	case "door_subsolo_locked_2":
 ds_grid_add_text("Você tem uma chave de uma das fechaduras", spr_player_portrait, 2, "Frida");
 obj_dialogo.dialogo_action = true;
	break;
	case "Roco":
 ds_grid_add_text("ola pequenina, algo me diz q não veio atras de livros..", spr_roco_portrait, 1, "Roco ");
 ds_grid_add_text("Eu preciso encontrar a saída deste\ncastelo maldito. Você sabe onde está?", spr_player_portrait, 0, "Frida");
 ds_grid_add_text("Compreendo..", spr_roco_portrait, 1, "Roco ");
 ds_grid_add_text("Eu sei a resposta que você procura. Mas não será tão fácil assim.", spr_roco_portrait, 1, "Roco ");
 ds_grid_add_text("O que voce quer\ndizer?", spr_player_portrait, 0, "Frida");
 ds_grid_add_text("Vou lhe dar uma\ncharada. Resolva-a, e eu lhe mostrarei o\ncaminho.", spr_roco_portrait, 1, "Roco ");
  //ds_grid_add_text("Mas se errar, tera\nconsequencias.", spr_roco_portrait, 1, "Roco ");
 ds_grid_add_text("Muito bem, diga logo.", spr_player_portrait, 0, "Frida");
 
   ds_grid_add_text("Escute com atençao, o que esta sempre a sua frente, mas nunca pode ser visto?", spr_roco_portrait, 1, "Roco ");
		add_op("Ar", "Resp 1");
		add_op("Futuro ", "Resp 2");
		add_op("Sombra", "Resp 3");
	 break;
		 case "Resp 1":
		 ds_grid_add_text("Errado! você ainda\nnão esta pronta para receber a verdade.", spr_roco_portrait, 0, "Frida");
		 obj_dialogo.dialogo_action = true;
		 break;
		 case "Resp 2":
		 ds_grid_add_text("Muito bem.. aqui está a chave para o\nalçapão, mas\ncuidado..", spr_roco_portrait, 0, "Roco");
		 ds_grid_add_text("Eu nao iria la..\naquele lugar cheira a morte.", spr_roco_portrait, 0, "Roco");
		  ds_grid_add_text("Você recebeu chave\ndo alçapão.", spr_player_portrait, 2, "Frida");
		 obj_controler.chave_salao = 1;
		 audio_play_sound(snd_item, 3, false);
		 obj_dialogo.dialogo_action = true;
		 break;
		 case "Resp 3":
		 ds_grid_add_text("Errado! você ainda não esta pronta para receber a verdade.", spr_roco_portrait, 0, "Frida");
		 
		 obj_dialogo.dialogo_action = true;
		 break;
	case "Dareth":
 ds_grid_add_text("Ainda nao esta bom.. \nmais fina, mais fina\nmais fina..", spr_dareth_portrait, 1, "Dareth");
 ds_grid_add_text("ah\nme desculpe, eu nao vi você ai é.. jovem\nbruxa eu presumo?", spr_dareth_portrait, 1, "Dareth");
 ds_grid_add_text("Estou preparando um belo cachecol, porque não se deita um\npouco?", spr_dareth_portrait, 1, "Dareth");
 ds_grid_add_text("DE JEITO NENHUM!", spr_chapeu_portrait, 0, "Frida");
 ds_grid_add_text("Eu adoraria, mas eu acabei de acordar..", spr_player_portrait , 0, "Frida");
 ds_grid_add_text("Eu preciso sair\ndesse castelo, você pode me ajudar?", spr_player_portrait, 0, "Frida");
 ds_grid_add_text("Mas é claro, pegue\nessa chave e siga a oeste.", spr_dareth_portrait, 1, "Dareth");
  ds_grid_add_text("Você recebeu uma\nchave.", spr_player_portrait, 2, "Frida");
 ds_grid_add_text("Volte quando quiser!", spr_dareth_portrait, 1, "Dareth");
 obj_controler._chave_subsolo_roco = 1;
 obj_dialogo.dialogo_action = true;
	 break;
	 case "Banan":
 ds_grid_add_text("Cuidado! não va para leste, tem um monstro horrivel la!", spr_banan_portrait, 1, "Banan");
 ds_grid_add_text("Acho que ja nos\nencontramos", spr_player_portrait, 0, "Frida");
 ds_grid_add_text("Você parece ser forte então, mas sera que \ntambem é esperta? ", spr_banan_portrait, 1, "Banan");
  ds_grid_add_text("oque é oque é, aquilo que mesmo estando\nlonge ainda esta no\nseu coração?", spr_banan_portrait, 1, "Banan");
		add_op("Sangue", "Resposta 1");
		add_op("Raiva", "Resposta 2");
		add_op("Familia", "Resposta 3");
	 break;
		 case "Resposta 1":
		 ds_grid_add_text("Resposta errada\nhahaha!", spr_banan_portrait, 1, "Banan");
		 obj_dialogo.dialogo_action = true;
		 break;
		 case "Resposta 2":
		 ds_grid_add_text("Errado! você não é\ntão esperta.", spr_banan_portrait, 1, "Banan");
		 obj_dialogo.dialogo_action = true;
		 break;
		 case "Resposta 3":
		 ds_grid_add_text("Correto!", spr_banan_portrait, 1, "Banan");
		 ds_grid_add_text("Pegue isso, encontrei por ai.", spr_banan_portrait, 1, "Banan");
		 obj_controler._chave_subsolo_banan = 1;
		 audio_play_sound(snd_item, 3, false);
		 ds_grid_add_text("Você recebeu uma\nchave.", spr_player_portrait, 2, "Frida");
		 ds_grid_add_text("Sinto saudade da\nminha familia..", spr_banan_portrait, 1, "Banan");
		 obj_dialogo.dialogo_action = true;
		 break;
		
		
		case "boss_false":
 ds_grid_add_text("Quem ousa perturbar o meu descanso?", spr_boss_falso_portrait, 0, "???");
 ds_grid_add_text("Mais um covarde?\ncorra antes que seja tarde..", spr_boss_falso_portrait, 0, "???");
 ds_grid_add_text("não, nos não temos\nmedo de você!", spr_player_portrait, 1, "Frida");
 ds_grid_add_text("Temos sim!", spr_chapeu_portrait, 1, "Chapéu");

		obj_dialogo.dialogo_action = true;
		break;
		case "boss_false_2":
 ds_grid_add_text("hum.. você não tem\nmedo de mim?", spr_boss_falso_portrait, 1, "???");
 ds_grid_add_text("A muitos anos não\nrecebo visitas.. o que você deseja?", spr_boss_falso_portrait, 1, "???");
 ds_grid_add_text("Eu.. Eu quero sair\ndesse castelo.", spr_player_portrait, 1, "Frida");
 ds_grid_add_text("HA HA HA HA", spr_boss_falso_portrait, 1, "??? ");
 ds_grid_add_text("Você tem coragem, mas isso não é o\nsufciente.", spr_boss_falso_portrait, 1, "??? ");
  ds_grid_add_text("Ouça com atenção..", spr_boss_falso_portrait, 1, "??? ");
 obj_dialogo.dialogo_action = true;
		break;
		case "boss_false_tentativa":
 ds_grid_add_text("Aaarrgh!", spr_player_portrait, 0, "Frida");
 ds_grid_add_text("Volte para o castelo!", spr_boss_falso_portrait, 1, "??? ");
 ds_grid_add_text("Não! eu quero mais\numa chance!", spr_player_portrait, 0, "Frida");
 obj_dialogo.dialogo_action = true;
		break;
		case "boss_false_perguntas":
 ds_grid_add_text("Quem não esta preso\nnesse castelo?", spr_boss_falso_portrait, 1, "BOSS ");
		add_op("Banan", "pergunta_boss_errou");
		add_op("Roco", "pergunta_boss_errou");
		add_op("Dareth", "pergunta_boss_continua");
		
		obj_dialogo.dialogo_action = true;
	 break;
		case "pergunta_boss_errou":
		 ds_grid_add_text("Resposta errada, você nunca saira daqui\n HA HA HA", spr_boss_falso_portrait, 1, "???");
		 obj_npc_boss_falso.estado = "dano";
		 obj_dialogo.dialogo_action = true;
		 break;
		 case "pergunta_boss_continua":
		 ds_grid_add_text("Certa resposta.. esse castelo atrai os\ncovardes.", spr_boss_falso_portrait, 1, "???");
		 ds_grid_add_text("Aqueles que não tem coragem ficarão presos aqui para todo o sempre..", spr_boss_falso_portrait, 1, "???");
		 ds_grid_add_text("Mas você ainda\nprecisa responder uma ultima Charada.", spr_boss_falso_portrait, 1, "???");
		 ds_grid_add_text("Eu sou aquilo que os perdidos procuram\nmesmo existindo\nvarias.", spr_boss_falso_portrait, 1, "???");
		 add_op("Vitoria", "pergunta_boss_errou");
		 add_op("Chance", "pergunta_boss_errou");
		 add_op("Saida", "pergunta_boss_terminou");
		 break;
		 case "pergunta_boss_terminou":
		  ds_grid_add_text("você..", spr_boss_falso_portrait, 1, "???");
		  ds_grid_add_text("você realmente tem\ncoragem, os corajosos merecem..", spr_boss_falso_portrait, 1, "???");
		  ds_grid_add_text("Liberdade.", spr_boss_falso_portrait, 1, "???");
		
		 obj_npc_boss_falso.estado = "terminou";
		 obj_dialogo.dialogo_action = true;
		 break;
}
}

function ds_grid_add_row()
{
var _grid = argument[0];
ds_grid_resize(_grid,ds_grid_width(_grid),ds_grid_height(_grid)+1);
return(ds_grid_height(_grid)-1);
}

function ds_grid_add_text()
{
var _grid = texto_grid;
var _y = ds_grid_add_row(_grid);

_grid[# 0, _y] = argument[0];
_grid[# 1, _y] = argument[1];
_grid[# 2, _y] = argument[2];
_grid[# 3, _y] = argument[3];
}

function add_op(_texto, _resposta)
{
	op[op_num] = _texto;
	op_resposta[op_num] = _resposta;
	
	op_num++;
}