// Inicializar chatterbox e setar variáveis

// Carregar arquivo
ChatterboxLoadFromFile("node4_mcthoughts.yarn");

chatterbox = ChatterboxCreate("node4_mcthoughts.yarn");       // Criar chatterbox
ChatterboxJump(chatterbox, "NodeStart");               // Ir para o node "Start"
chatterbox_update();                               // Pegar node e texto atual

option_index = 0;                                  // Inicializar option index

// Lógica para o mouse
option_hovered = -1; 
