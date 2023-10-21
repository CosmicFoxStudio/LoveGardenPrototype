// Inicializar chatterbox e setar variáveis

// Carregar arquivo
ChatterboxLoadFromFile("test2.yarn");

ChatterboxAddFunction("bg", background_set_index); // Add função para mudar background
chatterbox = ChatterboxCreate();                   // Criar chatterbox
ChatterboxJump(chatterbox, "Start");               // Ir para o node "Start"
chatterbox_update();                               // Pegar node e texto atual

option_index = 0;                                  // Inicializar option index

size = [0.7, 0.75];                                // Scale do sprite do character (small and large)
color = [c_ltgray, c_white];                       // Cor do sprite do character (dark and light)