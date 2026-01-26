# 🚀 Setup Rápido - 5 Minutos

## Passo 1: Firebase (2 min)

1. Acesse: https://console.firebase.google.com/
2. Crie projeto novo
3. Ative Firestore Database (modo produção)
4. Em Configurações > Adicionar app Web
5. Copie o `firebaseConfig`

## Passo 2: Configurar Sistema (1 min)

Edite `index.html` linha ~656:

```javascript
const firebaseConfig = {
  apiKey: "COLE_AQUI",
  authDomain: "COLE_AQUI",
  projectId: "COLE_AQUI",
  storageBucket: "COLE_AQUI",
  messagingSenderId: "COLE_AQUI",
  appId: "COLE_AQUI"
};
```

## Passo 3: Regras Firestore (1 min)

No Firebase Console > Firestore Database > Regras:

```javascript
rules_version = '2';
service cloud.firestore {
  match /databases/{database}/documents {
    match /{document=**} {
      allow read, write: if true;  // ⚠️ Temporário! Adicione auth depois
    }
  }
}
```

Publique as regras.

## Passo 4: Deploy GitHub Pages (1 min)

```bash
# Inicialize o repo
git init
git add .
git commit -m "Initial commit"

# Crie repo no GitHub e conecte
git remote add origin https://github.com/SEU_USUARIO/SEU_REPO.git
git push -u origin main

# No GitHub: Settings > Pages > Source: main branch
```

Pronto! Acesse: `https://SEU_USUARIO.github.io/SEU_REPO/`

## Teste Local (alternativa)

```bash
# Instale servidor HTTP
npm install -g http-server

# Execute
http-server

# Abra: http://localhost:8080
```

## ⚠️ Próximos Passos (Segurança)

1. Ative Firebase Authentication
2. Atualize regras para exigir login
3. Adicione sistema de usuários

## 🆘 Problemas Comuns

**Erro "Permission denied"**: Verifique regras do Firestore

**Página em branco**: Abra Console do navegador (F12) e veja erros

**Firebase não carrega**: Verifique as credenciais no `firebaseConfig`
