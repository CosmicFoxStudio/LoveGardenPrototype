// Inicializar chatterbox e setar variáveis

// Carregar arquivo
ChatterboxLoadFromFile("node5-1_ecopark.yarn");

chatterbox = ChatterboxCreate("node5-1_ecopark.yarn");       // Criar chatterbox
ChatterboxJump(chatterbox, "NodeStart");               // Ir para o node "Start"
chatterbox_update();                               // Pegar node e texto atual

option_index = 0;                                  // Inicializar option index

// Lógica para o mouse
option_hovered = -1; 
