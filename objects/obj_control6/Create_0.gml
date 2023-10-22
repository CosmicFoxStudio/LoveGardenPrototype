// Inicializar chatterbox e setar variáveis

// Carregar arquivo
ChatterboxLoadFromFile("Cena6.yarn");

chatterbox = ChatterboxCreate("Cena6.yarn");       // Criar chatterbox
ChatterboxJump(chatterbox, "Start");               // Ir para o node "Start"
chatterbox_update();                               // Pegar node e texto atual

option_index = 0;                                  // Inicializar option index