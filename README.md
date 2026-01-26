# Sistema de Gestão de Combustível - AMTC

Sistema web moderno para gestão de abastecimentos, notas fiscais e controle de combustível.

## 🚀 Deploy Rápido

### 1. Configurar Firebase

1. Acesse [Firebase Console](https://console.firebase.google.com/)
2. Crie um novo projeto (ou use um existente)
3. Ative o **Firestore Database**:
   - No menu lateral, vá em "Firestore Database"
   - Clique em "Criar banco de dados"
   - Escolha modo de produção
   - Selecione localização (southamerica-east1 para Brasil)

4. Configure as **Regras do Firestore**:
```javascript
rules_version = '2';
service cloud.firestore {
  match /databases/{database}/documents {
    // Permite leitura e escrita para todos (ajuste conforme necessário)
    match /{document=**} {
      allow read, write: if true;
    }
  }
}
```

⚠️ **IMPORTANTE**: Essas regras permitem acesso público. Para produção, implemente autenticação!

5. Obtenha suas credenciais:
   - Vá em Configurações do Projeto (ícone de engrenagem)
   - Role até "Seus apps" e clique no ícone Web (</>)
   - Registre o app e copie as credenciais do `firebaseConfig`

### 2. Configurar o Sistema

Edite o arquivo `index.html` e substitua as credenciais do Firebase (linha ~656):

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

### 3. Deploy no GitHub Pages

```bash
# Clone este repositório
git clone https://github.com/SEU_USUARIO/SEU_REPO.git
cd SEU_REPO

# Adicione suas alterações
git add .
git commit -m "Configuração inicial com Firebase"
git push origin main

# Ative o GitHub Pages
# Vá em Settings > Pages > Source: main branch
```

Seu sistema estará disponível em: `https://SEU_USUARIO.github.io/SEU_REPO/`

## 📦 Estrutura de Coleções do Firestore

O sistema usa as seguintes coleções:

- **fornecedores**: Dados de fornecedores
- **contratos**: Contratos com fornecedores
- **documentos**: Empenhos e AFTs
- **motoristas**: Cadastro de motoristas
- **veiculos**: Cadastro de veículos
- **notas**: Notas fiscais
- **itens**: Abastecimentos (itens das notas)

## 🔧 Desenvolvimento Local

```bash
# Instale um servidor HTTP simples
npm install -g http-server

# Execute no diretório do projeto
http-server

# Acesse: http://localhost:8080
```

## 🔐 Segurança (Produção)

Para uso em produção, implemente autenticação:

1. Ative o Firebase Authentication
2. Configure método de autenticação (Email/Password ou Google)
3. Atualize as regras do Firestore:

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

4. Adicione login ao sistema (código adicional necessário)

## 📊 Features

- ✅ Dashboard com métricas em tempo real
- ✅ Gestão de fornecedores, contratos e documentos
- ✅ Cadastro de motoristas e veículos
- ✅ Controle de notas fiscais e abastecimentos
- ✅ Histórico completo de abastecimentos
- ✅ Relatórios para impressão/PDF
- ✅ Interface responsiva (mobile-friendly)
- ✅ Sincronização em tempo real via Firebase
- ✅ Gráficos de consumo

## 🛠️ Tecnologias

- HTML5 + CSS3 (Vanilla)
- JavaScript ES6+ (Modules)
- Firebase Firestore
- Bootstrap 5
- Chart.js
- Lucide Icons

## 📝 Licença

MIT License - Use livremente!

## 🤝 Suporte

Para dúvidas ou problemas:
1. Verifique se as credenciais do Firebase estão corretas
2. Confira as regras do Firestore
3. Abra uma issue neste repositório
