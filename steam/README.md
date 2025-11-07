# steam

A new Flutter project.

## Arquitetura

O projeto utiliza a arquitetura MVVM (Model-View-ViewModel), que facilita a separação entre a lógica da interface do usuário e a lógica de negócios.

- **Model**: Representa os dados e a lógica de negócios do aplicativo. Neste projeto, o Model é dividido em duas partes principais:
  - **Data Layer (`models`, `repository`, `source`)**: Responsável pelo acesso e manipulação dos dados, seja de um banco de dados local (SQLite) ou de uma fonte remota. O padrão de repositório é usado para abstrair a origem dos dados.
  - **Domain Layer (`domain`)**: Embora o MVVM não exija uma camada de domínio explícita, ela foi definida aqui para encapsular as regras de negócios centrais de forma clara e separada. Contém as `entities` (objetos de negócio) e os `use cases` (regras de negócio).

- **View**: A camada de apresentação, composta pelos Widgets do Flutter. É responsável por exibir os dados e capturar as interações do usuário. No projeto, está localizada no diretório `view`.

- **ViewModel**: Atua como uma ponte entre o Model e a View. Ele expõe os dados do Model de uma forma que a View pode consumir facilmente e contém a lógica de apresentação. Os ViewModels (`viewmodels`) respondem às interações do usuário (vindas da View) e atualizam o Model. O estado da UI é gerenciado com o pacote `provider`.

- **Core**: Contém funcionalidades compartilhadas por todo o aplicativo, como serviços (`services`), classes de ajuda (`helpers`) e o tema visual (`theme`).

## Pacotes Utilizados

### Gerenciamento de Estado
- **provider**: Para gerenciamento de estado reativo e injeção de dependência.

### Navegação
- **go_router**: Para uma navegação baseada em rotas, facilitando o deep linking e a navegação complexa.

### Banco de Dados
- **sqflite**: Para persistência de dados em um banco de dados SQLite local.
- **path_provider**: Para encontrar o caminho do sistema de arquivos onde o banco de dados pode ser armazenado.

### Injeção de Dependência
- **get_it**: Como um localizador de serviços para registrar e obter instâncias de classes, principalmente para os `use cases` e `repositories`.

### UI e Estilo
- **google_fonts**: Para utilizar fontes do Google Fonts de forma fácil.
- **font_awesome_flutter**: Para uma vasta coleção de ícones.
- **lottie**: Para exibir animações Lottie.
- **animations**: Para criar animações de UI ricas.
- **page_transition**: Para transições de página personalizadas.

### Desenvolvimento e Testes
- **flutter_lints**: Para garantir a qualidade e o estilo do código.
- **build_runner**: Para geração de código.
- **mockito**: Para criar mocks em testes unitários.