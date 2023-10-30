// Inicializar chatterbox e setar variáveis

// Carregar arquivo
ChatterboxLoadFromFile("Cena3.yarn");

chatterbox = ChatterboxCreate("Cena3.yarn");       // Criar chatterbox
ChatterboxJump(chatterbox, "Start");               // Ir para o node "Start"
chatterbox_update();                               // Pegar node e texto atual

option_index = 0;                                  // Inicializar option index

// Lógica para o mouse
option_hovered = -1; 
