# 📋 GUIA COMPLETO DE INSTALAÇÃO
## Sistema de Gestão de Combustível - Do Zero ao Online

---

## 🎯 PARTE 1: CRIAR PROJETO NO FIREBASE (5-7 minutos)

### Passo 1.1: Acessar Firebase Console
1. Abra seu navegador
2. Acesse: **https://console.firebase.google.com/**
3. Faça login com sua conta Google
4. Você verá a tela inicial do Firebase Console

### Passo 1.2: Criar Novo Projeto
1. Clique no botão **"Adicionar projeto"** (ou "Add project")
2. Digite o nome do projeto: **"sistema-combustivel"** (ou o nome que preferir)
3. Clique em **"Continuar"**

### Passo 1.3: Configurar Google Analytics (Opcional)
1. A tela perguntará se quer ativar Google Analytics
2. **DESATIVE** a opção (não precisamos para este sistema)
3. Clique em **"Criar projeto"**
4. Aguarde 30-60 segundos enquanto o Firebase cria seu projeto
5. Quando aparecer "Seu projeto está pronto", clique em **"Continuar"**

### Passo 1.4: Ativar Firestore Database
1. No menu lateral esquerdo, procure e clique em **"Firestore Database"**
2. Clique no botão **"Criar banco de dados"**
3. Escolha o modo: **"Iniciar no modo de produção"**
4. Clique em **"Avançar"**
5. Escolha a localização: **"southamerica-east1"** (São Paulo, Brasil)
6. Clique em **"Ativar"**
7. Aguarde 1-2 minutos enquanto o banco é criado

### Passo 1.5: Configurar Regras de Segurança
1. Ainda na tela do Firestore, clique na aba **"Regras"** (ao lado de "Dados")
2. Você verá um editor de código
3. **APAGUE TODO** o conteúdo atual
4. **COLE** o seguinte código:

```javascript
rules_version = '2';
service cloud.firestore {
  match /databases/{database}/documents {
    match /{document=**} {
      allow read, write: if true;
    }
  }
}
```

5. Clique em **"Publicar"**
6. ⚠️ **ATENÇÃO**: Esta regra permite acesso público. Mais tarde você deve adicionar autenticação!

### Passo 1.6: Obter Credenciais do Firebase
1. Clique no ícone de **engrenagem** (⚙️) no menu lateral
2. Clique em **"Configurações do projeto"**
3. Role a página até encontrar **"Seus apps"**
4. Clique no ícone **</>** (Web)
5. Digite um apelido: **"Sistema Web"**
6. **NÃO** marque "Configurar Firebase Hosting"
7. Clique em **"Registrar app"**
8. Você verá um código JavaScript começando com `const firebaseConfig = {`
9. **COPIE TODO** o objeto firebaseConfig (do `{` até o `}`)
10. Cole em um bloco de notas temporário - você vai precisar logo

O código copiado deve ser algo assim:
```javascript
{
  apiKey: "AIzaSyXxXxXxXxXxXxXxXxXxXxXxXxXxXxX",
  authDomain: "sistema-combustivel-xxxxx.firebaseapp.com",
  projectId: "sistema-combustivel-xxxxx",
  storageBucket: "sistema-combustivel-xxxxx.appspot.com",
  messagingSenderId: "123456789012",
  appId: "1:123456789012:web:abcdef1234567890"
}
```

11. Clique em **"Continuar no console"**

✅ **FIREBASE CONFIGURADO!** Agora vamos para o GitHub.

---

## 🎯 PARTE 2: PREPARAR ARQUIVOS E CONFIGURAR CÓDIGO (3-5 minutos)

### Passo 2.1: Baixar os Arquivos
1. Baixe TODOS os arquivos que te passei:
   - index.html
   - README.md
   - SETUP.md
   - .gitignore
   - deploy.sh
   - firebase-config-example.js

2. Crie uma pasta no seu computador: **"sistema-combustivel"**
3. Coloque TODOS os arquivos dentro desta pasta

### Passo 2.2: Configurar Firebase no Código
1. Abra o arquivo **index.html** com um editor de texto (VS Code, Sublime, Notepad++, ou até Bloco de Notas)
2. Pressione **Ctrl+F** (ou Cmd+F no Mac) para buscar
3. Digite: **FIREBASE CONFIG**
4. Você vai encontrar este trecho (aproximadamente linha 656):

```javascript
const firebaseConfig = {
  apiKey: "SUA_API_KEY",
  authDomain: "SEU_PROJECT.firebaseapp.com",
  projectId: "SEU_PROJECT_ID",
  storageBucket: "SEU_PROJECT.appspot.com",
  messagingSenderId: "SEU_SENDER_ID",
  appId: "SEU_APP_ID"
};
```

5. **SUBSTITUA** todo esse objeto pelas credenciais que você copiou no Passo 1.6
6. O resultado deve ficar assim (com SUAS credenciais):

```javascript
const firebaseConfig = {
  apiKey: "AIzaSyXxXxXxXxXxXxXxXxXxXxXxXxXxXxX",
  authDomain: "sistema-combustivel-xxxxx.firebaseapp.com",
  projectId: "sistema-combustivel-xxxxx",
  storageBucket: "sistema-combustivel-xxxxx.appspot.com",
  messagingSenderId: "123456789012",
  appId: "1:123456789012:web:abcdef1234567890"
};
```

7. **SALVE** o arquivo (Ctrl+S ou Cmd+S)

✅ **CÓDIGO CONFIGURADO!** Agora vamos colocar no GitHub.

---

## 🎯 PARTE 3: CRIAR REPOSITÓRIO NO GITHUB (2-3 minutos)

### Passo 3.1: Acessar GitHub
1. Abra seu navegador
2. Acesse: **https://github.com**
3. Faça login (ou crie uma conta se não tiver)

### Passo 3.2: Criar Novo Repositório
1. No canto superior direito, clique no **+** (mais)
2. Clique em **"New repository"**
3. Preencha os campos:
   - **Repository name**: `sistema-combustivel` (ou outro nome, sem espaços)
   - **Description**: "Sistema de Gestão de Combustível - AMTC"
   - Deixe como **Public** (público)
   - **NÃO** marque nenhuma opção (nem README, nem .gitignore, nem license)
4. Clique em **"Create repository"**

### Passo 3.3: Copiar URL do Repositório
1. Você verá uma tela com instruções
2. Na seção "Quick setup", você verá uma URL
3. Clique no botão de **copiar** ao lado da URL
4. A URL será algo como: `https://github.com/SEU_USUARIO/sistema-combustivel.git`
5. Guarde essa URL (ou deixe a página aberta)

✅ **REPOSITÓRIO CRIADO!** Agora vamos enviar os arquivos.

---

## 🎯 PARTE 4: ENVIAR ARQUIVOS PARA O GITHUB (5-7 minutos)

### Opção A: Usar o Script Automático (RECOMENDADO - Mais Rápido)

#### Passo 4A.1: Abrir Terminal
- **Windows**: Pressione `Win + R`, digite `cmd` e Enter
- **Mac**: Pressione `Cmd + Espaço`, digite "Terminal" e Enter
- **Linux**: Pressione `Ctrl + Alt + T`

#### Passo 4A.2: Navegar até a Pasta
```bash
cd caminho/para/sistema-combustivel
```
Exemplo Windows:
```bash
cd C:\Users\Douglas\Documents\sistema-combustivel
```
Exemplo Mac/Linux:
```bash
cd ~/Documents/sistema-combustivel
```

#### Passo 4A.3: Executar Script de Deploy
```bash
bash deploy.sh
```

Quando pedir a URL do repositório, cole a URL que você copiou no Passo 3.3

O script fará tudo automaticamente! Pule para o Passo 5.

---

### Opção B: Comandos Manuais (Se o script não funcionar)

#### Passo 4B.1: Instalar Git (se não tiver)
- **Windows**: Baixe em https://git-scm.com/download/win
- **Mac**: `brew install git` (se tiver Homebrew) ou baixe em https://git-scm.com/download/mac
- **Linux**: `sudo apt install git` (Ubuntu/Debian)

#### Passo 4B.2: Abrir Terminal na Pasta
Navegue até a pasta onde estão os arquivos (mesmo do Passo 4A.2)

#### Passo 4B.3: Executar Comandos Git
Digite cada comando abaixo, pressionando Enter após cada um:

```bash
# 1. Inicializar repositório Git
git init

# 2. Configurar seu nome (primeira vez usando Git)
git config user.name "Seu Nome"

# 3. Configurar seu email (primeira vez usando Git)
git config user.email "seu@email.com"

# 4. Adicionar todos os arquivos
git add .

# 5. Fazer commit
git commit -m "Initial commit - Sistema de Combustível"

# 6. Renomear branch para main
git branch -M main

# 7. Adicionar repositório remoto (COLE SUA URL AQUI)
git remote add origin https://github.com/SEU_USUARIO/sistema-combustivel.git

# 8. Enviar para GitHub
git push -u origin main
```

**IMPORTANTE**: No comando 7, substitua a URL pela sua URL copiada no Passo 3.3!

Se pedir usuário e senha:
- **Usuário**: seu username do GitHub
- **Senha**: você precisa criar um Personal Access Token (não aceita senha comum)
  
Para criar o token:
1. GitHub > Settings (foto de perfil) > Developer settings
2. Personal access tokens > Tokens (classic) > Generate new token
3. Marque: `repo` (todas as opções de repo)
4. Generate token
5. Copie o token (aparece uma vez só!)
6. Use o token como senha

✅ **ARQUIVOS ENVIADOS!** Agora vamos ativar o site.

---

## 🎯 PARTE 5: ATIVAR GITHUB PAGES (2 minutos)

### Passo 5.1: Acessar Configurações do Repositório
1. No GitHub, vá até seu repositório: `https://github.com/SEU_USUARIO/sistema-combustivel`
2. Clique na aba **"Settings"** (Configurações)

### Passo 5.2: Ativar Pages
1. No menu lateral esquerdo, role até encontrar **"Pages"**
2. Clique em **"Pages"**
3. Em "Source" (Origem), clique no dropdown que diz "None"
4. Selecione: **"main"** (ou "master" se aparecer assim)
5. Deixe a pasta como: **"/ (root)"**
6. Clique em **"Save"**

### Passo 5.3: Aguardar Deploy
1. Aguarde 1-3 minutos
2. Recarregue a página (F5)
3. Você verá uma mensagem verde: **"Your site is live at https://SEU_USUARIO.github.io/sistema-combustivel/"**
4. Clique no link para abrir seu sistema!

✅ **SITE NO AR!** Agora vamos testar.

---

## 🎯 PARTE 6: TESTAR O SISTEMA (2-3 minutos)

### Passo 6.1: Abrir o Sistema
1. Acesse a URL do seu site: `https://SEU_USUARIO.github.io/sistema-combustivel/`
2. Você deve ver uma tela de carregamento seguida do Dashboard

### Passo 6.2: Criar Primeiro Fornecedor
1. No menu lateral, clique em **"Fornecedores"**
2. Clique em **"Novo Fornecedor"**
3. Preencha:
   - Razão Social: Posto Exemplo Ltda
   - CNPJ: 12.345.678/0001-90
   - Telefone: (65) 99999-9999
4. Clique em **"Salvar"**
5. Você deve ver uma notificação verde: "Fornecedor criado com sucesso!"

### Passo 6.3: Verificar Firestore
1. Volte ao Firebase Console
2. Vá em **"Firestore Database"**
3. Clique na aba **"Dados"**
4. Você deve ver uma coleção **"fornecedores"**
5. Clique nela e verá o fornecedor que acabou de criar!

✅ **SISTEMA FUNCIONANDO PERFEITAMENTE!**

---

## 🎉 PARABÉNS! SEU SISTEMA ESTÁ NO AR!

### 📍 URLs Importantes:
- **Seu Sistema**: https://SEU_USUARIO.github.io/sistema-combustivel/
- **Firebase Console**: https://console.firebase.google.com/
- **GitHub Repo**: https://github.com/SEU_USUARIO/sistema-combustivel

### 🔄 Como Atualizar o Sistema:
Sempre que fizer alterações nos arquivos:
```bash
git add .
git commit -m "Descrição das mudanças"
git push
```
Aguarde 1-2 minutos e recarregue o site.

---

## ⚠️ IMPORTANTE - SEGURANÇA

Seu sistema está com acesso público no Firebase! Para produção, você DEVE:

1. **Ativar Firebase Authentication**
2. **Atualizar as regras do Firestore** para:
```javascript
rules_version = '2';
service cloud.firestore {
  match /databases/{database}/documents {
    match /{document=**} {
      allow read, write: if request.auth != null;
    }
  }
}
```
3. **Adicionar sistema de login** no código

---

## 🆘 PROBLEMAS COMUNS E SOLUÇÕES

### Problema 1: Página em Branco
**Solução**: 
- Pressione F12 no navegador
- Vá na aba "Console"
- Veja os erros em vermelho
- Se disser "Firebase: Error (auth/invalid-api-key)": suas credenciais estão erradas

### Problema 2: "Permission denied" no Firestore
**Solução**:
- Volte ao Firebase Console > Firestore > Regras
- Certifique-se que tem `allow read, write: if true;`
- Clique em Publicar

### Problema 3: Git pedindo senha mas não aceita
**Solução**:
- GitHub não aceita mais senha comum
- Você precisa criar um Personal Access Token (instruções no Passo 4B.3)

### Problema 4: Deploy.sh não funciona no Windows
**Solução**:
- Instale Git Bash: https://git-scm.com/download/win
- Use Git Bash ao invés do CMD
- Ou use a Opção B (comandos manuais)

---

## 📞 PRÓXIMOS PASSOS

1. ✅ Sistema instalado e funcionando
2. 📝 Cadastre seus fornecedores, veículos, motoristas
3. 📋 Crie contratos e empenhos
4. 🚗 Comece a registrar abastecimentos
5. 📊 Use o dashboard para acompanhar consumo
6. 📄 Gere relatórios para impressão

---

## 💡 DICAS EXTRAS

- **Backup**: Export/Import está disponível no futuro (mas dados já estão no Firebase)
- **Multi-dispositivo**: Acesse de qualquer lugar, dados sincronizam automaticamente
- **Offline**: Sistema funciona offline e sincroniza quando voltar a conexão
- **Performance**: Firebase Firestore é extremamente rápido, mesmo com muitos dados

---

**Desenvolvido com ❤️ para AMTC Rondonópolis**

Qualquer dúvida, consulte o README.md ou entre em contato!
