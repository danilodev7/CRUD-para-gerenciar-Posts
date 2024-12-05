
FROM ruby:2.3.8

# Instalar dependências
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

# Configurar diretório de trabalho
WORKDIR /app

# Adicionar Gemfile e instalar gems
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN bundle install

# Adicionar o restante do código da aplicação
COPY . /app

# Configurar o comando padrão para iniciar o servidor
CMD ["rails", "server", "-b", "0.0.0.0"]