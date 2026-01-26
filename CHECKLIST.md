# ✅ CHECKLIST DE INSTALAÇÃO
## Sistema de Gestão de Combustível

**Imprima esta página e marque cada item conforme completar!**

---

## 📋 FIREBASE (7 minutos)

- [ ] 1. Acessar https://console.firebase.google.com/
- [ ] 2. Criar projeto "sistema-combustivel"
- [ ] 3. Ativar Firestore Database (modo produção)
- [ ] 4. Escolher região: southamerica-east1
- [ ] 5. Publicar regras: `allow read, write: if true;`
- [ ] 6. Adicionar app Web
- [ ] 7. Copiar credenciais do firebaseConfig

**Credenciais copiadas?** ✅

---

## 💻 CONFIGURAR CÓDIGO (3 minutos)

- [ ] 8. Baixar todos os arquivos
- [ ] 9. Criar pasta "sistema-combustivel"
- [ ] 10. Abrir index.html no editor de texto
- [ ] 11. Buscar (Ctrl+F): "FIREBASE CONFIG"
- [ ] 12. Colar credenciais do Firebase
- [ ] 13. Salvar arquivo (Ctrl+S)

**Código configurado?** ✅

---

## 🐙 GITHUB (5 minutos)

- [ ] 14. Acessar https://github.com
- [ ] 15. Clicar no + > New repository
- [ ] 16. Nome: sistema-combustivel
- [ ] 17. Public, sem README/gitignore/license
- [ ] 18. Create repository
- [ ] 19. Copiar URL do repositório

**URL copiada?** ✅

---

## 📤 ENVIAR ARQUIVOS (7 minutos)

### Opção A: Script Automático
- [ ] 20. Abrir terminal/cmd na pasta
- [ ] 21. Executar: `bash deploy.sh`
- [ ] 22. Colar URL do repositório
- [ ] 23. Aguardar conclusão

### Opção B: Manual
- [ ] 20. Abrir terminal/cmd na pasta
- [ ] 21. `git init`
- [ ] 22. `git config user.name "Seu Nome"`
- [ ] 23. `git config user.email "seu@email.com"`
- [ ] 24. `git add .`
- [ ] 25. `git commit -m "Initial commit"`
- [ ] 26. `git branch -M main`
- [ ] 27. `git remote add origin [SUA_URL]`
- [ ] 28. `git push -u origin main`

**Arquivos enviados?** ✅

---

## 🌐 ATIVAR SITE (2 minutos)

- [ ] 29. Abrir repositório no GitHub
- [ ] 30. Settings > Pages
- [ ] 31. Source: main branch
- [ ] 32. Salvar
- [ ] 33. Aguardar 2-3 minutos
- [ ] 34. Recarregar página
- [ ] 35. Copiar URL do site

**Site no ar?** ✅

---

## 🧪 TESTAR (3 minutos)

- [ ] 36. Abrir URL do site
- [ ] 37. Ver Dashboard carregando
- [ ] 38. Clicar em Fornecedores
- [ ] 39. Criar novo fornecedor teste
- [ ] 40. Ver notificação de sucesso
- [ ] 41. Verificar no Firebase Firestore > Dados

**Sistema funcionando?** ✅

---

## 🎉 SISTEMA INSTALADO!

**URLs Importantes:**

Sistema: https://__________.github.io/__________/

Firebase: https://console.firebase.google.com/

GitHub: https://github.com/__________/__________/

---

## ⚠️ LEMBRETE DE SEGURANÇA

- [ ] Adicionar autenticação (futuro)
- [ ] Atualizar regras do Firestore
- [ ] Trocar `if true` por `if request.auth != null`

---

**Data da Instalação:** ___/___/______

**Instalado por:** _____________________

**Tempo total:** ______ minutos

**Problemas encontrados:** 

_________________________________________________

_________________________________________________

_________________________________________________

**Status Final:** [ ] ✅ Funcionando Perfeitamente

---

**Para atualizar o sistema:**
```bash
git add .
git commit -m "Descrição"
git push
```

**Para ajuda detalhada, consulte:** INSTALACAO_COMPLETA.md
