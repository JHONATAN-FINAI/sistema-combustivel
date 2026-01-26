# 📚 SISTEMA DE GESTÃO DE COMBUSTÍVEL
## Documentação Completa

---

## 🎯 COMECE AQUI

**Você tem 3 opções para começar:**

### 📖 Opção 1: GUIA COMPLETO (RECOMENDADO)
👉 **[INSTALACAO_COMPLETA.md](INSTALACAO_COMPLETA.md)**
- Passo a passo detalhado com explicações
- Prints e descrições visuais
- Tempo estimado: 25-30 minutos
- **Melhor para**: Primeira instalação

### ✅ Opção 2: CHECKLIST RÁPIDO
👉 **[CHECKLIST.md](CHECKLIST.md)**
- Lista rápida para marcar
- Sem explicações detalhadas
- Tempo estimado: 20 minutos
- **Melhor para**: Quem já conhece Git/Firebase

### ⚡ Opção 3: SETUP EXPRESS
👉 **[SETUP.md](SETUP.md)**
- Versão super resumida
- Apenas comandos essenciais
- Tempo estimado: 5 minutos
- **Melhor para**: Desenvolvedores experientes

---

## 📦 ARQUIVOS DO SISTEMA

### Arquivo Principal
- **[index.html](index.html)** - Sistema completo com Firebase integrado

### Configuração
- **[.gitignore](.gitignore)** - Arquivos ignorados pelo Git
- **[firebase-config-example.js](firebase-config-example.js)** - Exemplo de credenciais

### Deploy Automatizado
- **[deploy.sh](deploy.sh)** - Script para deploy automático no GitHub

---

## 📚 DOCUMENTAÇÃO

### Instalação
- **[INSTALACAO_COMPLETA.md](INSTALACAO_COMPLETA.md)** - Guia passo a passo completo
- **[SETUP.md](SETUP.md)** - Setup rápido em 5 minutos
- **[CHECKLIST.md](CHECKLIST.md)** - Checklist para impressão

### Ajuda
- **[TROUBLESHOOTING.md](TROUBLESHOOTING.md)** - Solução de problemas comuns
- **[README.md](README.md)** - Visão geral do projeto

---

## 🚀 INÍCIO RÁPIDO

### Para Iniciantes
1. Leia **[INSTALACAO_COMPLETA.md](INSTALACAO_COMPLETA.md)**
2. Siga cada passo cuidadosamente
3. Consulte **[TROUBLESHOOTING.md](TROUBLESHOOTING.md)** se tiver problemas

### Para Experientes
1. Abra **[SETUP.md](SETUP.md)**
2. Configure Firebase
3. Execute `./deploy.sh`
4. Pronto!

---

## 📋 REQUISITOS

- **Conta Google** (para Firebase)
- **Conta GitHub** (para hospedagem)
- **Git instalado** (para deploy)
- **Editor de texto** (VS Code, Sublime, etc)
- **Navegador moderno** (Chrome, Firefox, Edge, Safari)

---

## 🎯 RESUMO DO PROCESSO

```
1. Firebase Console
   └─ Criar projeto
   └─ Ativar Firestore
   └─ Copiar credenciais

2. Configurar Código
   └─ Editar index.html
   └─ Colar credenciais Firebase

3. GitHub
   └─ Criar repositório
   └─ Enviar arquivos
   └─ Ativar Pages

4. Testar
   └─ Abrir site
   └─ Criar dados teste
   └─ Verificar funcionamento
```

**Tempo Total:** 20-30 minutos

---

## 🌐 URLs IMPORTANTES

Após instalação, você terá:

- **Seu Sistema**: `https://SEU_USUARIO.github.io/sistema-combustivel/`
- **Firebase Console**: `https://console.firebase.google.com/`
- **Repositório GitHub**: `https://github.com/SEU_USUARIO/sistema-combustivel/`

---

## 🔧 ESTRUTURA DE ARQUIVOS

```
sistema-combustivel/
│
├── index.html                    # Sistema completo (PRINCIPAL)
├── README.md                     # Documentação geral
├── SETUP.md                      # Setup rápido
├── INSTALACAO_COMPLETA.md       # Guia passo a passo
├── CHECKLIST.md                 # Checklist para impressão
├── TROUBLESHOOTING.md           # Solução de problemas
├── .gitignore                   # Arquivos ignorados pelo Git
├── deploy.sh                    # Script de deploy automático
└── firebase-config-example.js   # Exemplo de configuração
```

---

## ⚠️ ATENÇÃO - SEGURANÇA

O sistema vem configurado com **acesso público** no Firebase para facilitar a instalação inicial.

**IMPORTANTE**: Para uso em produção, você DEVE:

1. Ativar Firebase Authentication
2. Atualizar regras do Firestore
3. Implementar sistema de login

Veja detalhes em **[README.md](README.md)** seção "Segurança"

---

## 🎨 FEATURES DO SISTEMA

✅ Dashboard com métricas em tempo real
✅ Gestão completa de fornecedores
✅ Controle de contratos e documentos
✅ Cadastro de motoristas e veículos
✅ Gerenciamento de notas fiscais
✅ Registro de abastecimentos
✅ Histórico completo com filtros
✅ Relatórios para impressão/PDF
✅ Interface responsiva (mobile)
✅ Sincronização automática (Firebase)
✅ Gráficos de consumo (Chart.js)
✅ Notificações visuais (toasts)

---

## 💡 DICAS

### Para Instalação:
1. Use o **INSTALACAO_COMPLETA.md** se for sua primeira vez
2. Não pule passos, siga na ordem
3. Teste cada etapa antes de prosseguir
4. Guarde suas credenciais do Firebase em local seguro

### Para Uso Diário:
1. Mantenha o Firebase Console aberto para monitorar
2. Faça backup dos dados periodicamente
3. Use Chrome/Firefox para melhor compatibilidade
4. Cadastre dados básicos antes de usar (fornecedores, veículos, etc)

### Para Manutenção:
1. Consulte **TROUBLESHOOTING.md** primeiro
2. Verifique Console do navegador (F12) se algo não funcionar
3. Mantenha o repositório GitHub organizado
4. Documente suas customizações

---

## 📞 SUPORTE

### Problemas?
1. Consulte **[TROUBLESHOOTING.md](TROUBLESHOOTING.md)**
2. Verifique Console do navegador (F12)
3. Confira Firebase Console > Uso
4. Veja GitHub Actions (se aplicável)

### Precisa de Ajuda?
Ao pedir ajuda, forneça:
- Print do erro (Console F12)
- URL do seu site
- Passo onde travou
- Sistema operacional

---

## 🔄 ATUALIZAÇÕES

Para atualizar o sistema após mudanças:

```bash
git add .
git commit -m "Descrição das mudanças"
git push
```

Aguarde 1-2 minutos e recarregue o site.

---

## 📝 LICENÇA

MIT License - Use livremente!

---

## 🎉 PRONTO PARA COMEÇAR?

### Escolha seu caminho:

1. **Nunca usei Git/Firebase?**
   → Leia **[INSTALACAO_COMPLETA.md](INSTALACAO_COMPLETA.md)**

2. **Já conheço mas quero checklist?**
   → Use **[CHECKLIST.md](CHECKLIST.md)**

3. **Sou desenvolvedor experiente?**
   → Vá direto para **[SETUP.md](SETUP.md)**

---

**Desenvolvido para AMTC Rondonópolis**

Boa instalação! 🚀
