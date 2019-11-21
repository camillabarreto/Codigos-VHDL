# **Relatório:**

Faça o download do arquivo simple_car_alarm.qar, disponível no Moodle da disciplina e realize as seguintes avaliações:
- **01** : Perceba que existem 4 versões para o mesmo Alarme de Carro. Realize a simulação no ModelSim das 4 versões e perceba qual é a diferença de funcionamento desses circuitos.
- **02** :  Anote o número de elementos em cada versão.
- **03** : Qual versão é a mais adequada na sua opinião?
- **04** : Modifique a sua escolha para que o alarme não possa ser ativado se o "sensor" estiver em "1".
- **05** : Analise o arquivo tb_vX.do e modifique-o para testar também essa nova condição.
- **06** : Implemente a nova versão como uma nova arquitetura "fsm_v5", e escrever o arquivo de simulação "tbv5.do".
- **07** : Salve as telas da simulação ("v5_sim.png"), tela da fsm ("v5_fsm.png"), tela do RTL ("v5_rtl.png").
- **08** : Acrescente os novos arquivos no projeto e salve o novo .qar

**QUESTÃO 01**

Versão 01:     3 estados (running)


Versão 02:     3 estados (flag)


Versão 03:     5 estados (2 wait)


Versão 04:     6 estados (3 wait)


**QUESTÃO 02**


Versão 01:     3 elementos lógicos


Versão 02:    4 elementos lógicos


Versão 03:    6 elementos lógicos


Versão 04:    4 elementos lógicos


**QUESTÃO 03**

As versões 2 e 4 possuem o menor número de elementos lógicos e evitam o running, mas entre as duas versões acredito que a mais adequada seria a versão 4 por que o mapa de estados é mais intuitivo, na versão 2 existe um elemento (flag) que não é considerado um estado e por isso não é exibido no mapa.

**QUESTÃO 04**

Modificação no código da versão 4 para versão 5:
when disarmed =>
       if (remote = '1' and sensors = '0') then
        nx_state <= wait1;
       else
           nx_state <= disarmed;
       end if;

**QUESTÃO 05**

Simulação: tentativa de armar o alarme com o sensor detectando presença

##linhas adicionadas no arquivo: tbv5.do
force -freeze sim:/simple_car_alarm/sensors 1 0, 0 6sec
force -freeze sim:/simple_car_alarm/remote 0 0, 1 2sec, 0 4sec, 1 8sec, 0 10sec
run 15 sec
WaveRestoreZoom {0 ps} {55sec}

**QUESTÃO 06**

Arquivo (.vhd): https://github.com/camillabarreto/Codigos-VHDL/blob/master/AE4/simple_car_alarm.vhd 
    
Arquivo (.do): https://github.com/camillabarreto/Codigos-VHDL/blob/master/AE4/simulation/modelsim/tbv5.do 

**QUESTÃO 07**

Imagens: https://github.com/camillabarreto/Codigos-VHDL/tree/master/AE4/Imagens 


