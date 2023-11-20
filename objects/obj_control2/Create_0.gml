// Inicializar chatterbox e setar variáveis

// Carregar arquivo
ChatterboxLoadFromFile("node2_schoolcorridor_ype.yarn");

chatterbox = ChatterboxCreate("node2_schoolcorridor_ype.yarn");       // Criar chatterbox
ChatterboxJump(chatterbox, "NodeStart");               // Ir para o node "Start"
chatterbox_update();                               // Pegar node e texto atual

option_index = 0;                                  // Inicializar option index

// Lógica para o mouse
option_hovered = -1; 
