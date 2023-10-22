// Inicializar chatterbox e setar variáveis

// Carregar arquivo
ChatterboxLoadFromFile("test3.yarn");

ChatterboxAddFunction("bg", background_set_index); // Add função para mudar background

chatterbox = ChatterboxCreate();                   // Criar chatterbox
ChatterboxJump(chatterbox, "Start");               // Ir para o node "Start"
chatterbox_update();                               // Pegar node e texto atual

option_index = 0;                                  // Inicializar option index