# Projeto Forma 🚀

![Ruby on Rails](https://img.shields.io/badge/Ruby%20on%20Rails-2.3.8-red)
![Ember.js](https://img.shields.io/badge/Ember.js-1.13.13-orange)
![MySQL](https://img.shields.io/badge/MySQL-5.7-blue)
![Docker](https://img.shields.io/badge/Docker-19.03.12-blue)
![CircleCI](https://img.shields.io/badge/CircleCI-2.1-green)

## Descrição do Projeto 📄

Este projeto é uma aplicação CRUD para gerenciar "Posts" utilizando Ruby on Rails 2.3.8 no backend e Ember.js no frontend. A aplicação inclui integração contínua com CircleCI e é containerizada usando Docker.

## Tecnologias Utilizadas 🛠️

- **Ruby on Rails 2.3.8**: Framework web para o backend.
- **Ember.js 1.13.13**: Framework JavaScript para o frontend.
- **MySQL 5.7**: Banco de dados relacional.
- **Docker**: Containerização da aplicação.
- **CircleCI**: Integração contínua.

## Seção 1: Ruby on Rails 2.3.8 🏗️

### Configuração

1. Instale as dependências:
    ```sh
    bundle install
    ```

2. Configure o banco de dados:
    ```sh
    rake db:create db:migrate
    ```

3. Inicie o servidor:
    ```sh
    rails server
    ```

## Seção 2: Ember.js e Front-End 🌐

### Configuração

1. Abra o arquivo `index.html` em um navegador.

## Seção 3: Criação e Consumo de APIs 🔌

### Execução

1. Execute o script de teste de API:
    ```sh
    ruby api_test.rb
    ```

## Seção 4: Integração Contínua (CI/CD) 🔄

### Configuração

1. Configure o CircleCI com o arquivo `.circleci/config.yml`.

## Seção 5: Docker 🐳

### Configuração

1. Construa e inicie os containers:
    ```sh
    docker-compose up --build
    ```

## Prós e Contras ⚖️

### Prós

- **Rails 2.3.8**: Simplicidade e rapidez no desenvolvimento de aplicações CRUD.
- **Ember.js**: Estrutura robusta para aplicações frontend.
- **Docker**: Facilita a configuração e a execução da aplicação em diferentes ambientes.
- **CircleCI**: Automatiza o processo de integração contínua.

### Contras

- **Rails 2.3.8**: Versão antiga, pode ter problemas de compatibilidade com bibliotecas modernas.
- **Ember.js 1.13.13**: Versão desatualizada, falta de suporte para novas funcionalidades.
- **MySQL 5.7**: Pode não ser a versão mais otimizada para todas as aplicações.

## Dificuldades e Possíveis Bugs 🐛

### Dificuldades

- **Compatibilidade de Versões**: Rails 2.3.8 e Ember.js 1.13.13 são versões antigas, o que pode causar dificuldades na integração com ferramentas modernas.
- **Configuração de Ambiente**: Configurar o ambiente de desenvolvimento pode ser desafiador devido às versões específicas das tecnologias utilizadas.

### Possíveis Bugs

- **Problemas de Compatibilidade**: Algumas bibliotecas modernas podem não ser compatíveis com Rails 2.3.8.
- **Erros de Dependência**: Dependências desatualizadas podem causar erros inesperados.
- **Problemas no Linux**: Configurações específicas do sistema operacional podem causar problemas na execução da aplicação.

## Documentação 📚

### Estrutura do Projeto

- **Backend**: Diretório `app` contém os modelos, controladores e views do Rails.
- **Frontend**: Arquivos `index.html`, `app.js` e `styles.css` para a interface Ember.js.
- **Configuração**: Arquivos de configuração para banco de dados, Docker e CircleCI.

### Explicações

- **Rails**: Utilizado para criar um recurso CRUD para gerenciar "Posts".
- **Ember.js**: Interface web para consumir o recurso criado no backend.
- **API Test**: Script Ruby para testar a API REST do recurso "Posts".
- **CircleCI**: Configuração de pipeline para integração contínua.
- **Docker**: Dockerfile e `docker-compose.yml` para containerização da aplicação.

## Conclusão 🏁

Este projeto demonstra a criação de uma aplicação completa utilizando tecnologias específicas. Apesar das limitações das versões utilizadas, a aplicação é funcional e atende aos requisitos especificados. A documentação detalhada e a configuração de integração contínua garantem a manutenção e a escalabilidade do projeto.
