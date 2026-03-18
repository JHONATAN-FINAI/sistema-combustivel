# Sistema de Gestão de Combustível - SCFC

Sistema web moderno para gestão de abastecimentos, notas fiscais e controle de combustível.

**🎯 Versão Atual:** Supabase (Março 2026)  
**✨ Novo:** Controle Semanal de Notas Fiscais

---

## 🚀 Deploy Rápido

### 1. Configurar Supabase

#### 1.1 Criar Projeto

1. Acesse [Supabase](https://supabase.com)
2. Crie um novo projeto (ou use um existente)
3. Escolha localização: **South America (São Paulo)** para melhor performance no Brasil

#### 1.2 Executar SQL

1. No Supabase, vá em **SQL Editor**
2. Copie e execute o arquivo `schema.sql` (ou cada script SQL fornecido)
3. Scripts necessários:
   - Schema completo (tabelas principais)
   - `criar_tabela_semanas_sem_movimento.sql` (nova funcionalidade)

#### 1.3 Obter Credenciais

1. Vá em **Settings** → **API**
2. Copie:
   - **Project URL** (ex: `https://xxxxx.supabase.co`)
   - **anon/public key** (chave pública)

### 2. Configurar Sistema

Edite o arquivo `index.html` nas linhas 1023-1024:

```javascript
const SUPABASE_URL = 'SUA_URL_AQUI';
const SUPABASE_KEY = 'SUA_CHAVE_AQUI';
```

### 3. Deploy GitHub Pages

#### 3.1 Fazer Upload

1. Faça upload do `index.html` para seu repositório
2. Commit: `git commit -m "Deploy sistema Supabase"`
3. Push: `git push origin main`

#### 3.2 Ativar GitHub Pages

1. Vá em **Settings** → **Pages**
2. Source: **Deploy from a branch**
3. Branch: **main** / Folder: **/ (root)**
4. Save

#### 3.3 Aguardar Build

Aguarde 2-5 minutos até aparecer: ✅ **Your site is live at...**

### 4. Acessar Sistema

Abra a URL fornecida pelo GitHub Pages.

**Deve ver:**
- ✅ Badge verde "SUPABASE ONLINE" no menu
- ✅ Menu "Controle Semanal"
- ✅ Console mostra "Supabase conectado"

**Se não ver:** Limpe cache do navegador (`Ctrl + Shift + R`)

---

## 📋 Funcionalidades

### Principais

- ✅ **Dashboard** - Visão geral com indicadores
- ✅ **Notas Fiscais** - Gestão de notas com período de fiscalização
- ✅ **Histórico** - Todos os abastecimentos registrados
- ✅ **Controle Semanal** ⭐ NOVO - Controle de emissão por semana
- ✅ **Relatórios** - Relatórios oficiais em PDF

### Cadastros

- ✅ **Fornecedores** - Postos e fornecedores
- ✅ **Contratos** - Contratos de fornecimento
- ✅ **Atas** - Atas de Registro de Preços
- ✅ **Empenhos & AFTs** - Documentos orçamentários
- ✅ **Motoristas** - Cadastro com CPF e CNH
- ✅ **Veículos** - Frota com placa, modelo e ano
- ✅ **Fiscal** - Dados do fiscal responsável

### Novo: Controle Semanal

**O que faz:**
- Visualiza status de emissão de notas por semana (domingo a sábado)
- Identifica semanas pendentes, emitidas ou sem movimento
- Permite marcar semanas sem abastecimentos
- Histórico de 12 semanas

**Status possíveis:**
- 🟢 **Emitida** - Nota finalizada
- 🟡 **Pendente** - Aguardando emissão
- 🟡 **Em andamento** - Nota criada mas não finalizada
- 🟣 **Sem movimento** - Sem abastecimentos no período
- ⚪ **Sem empenho** - Combustível sem empenho ativo

**Como usar:**
1. Acesse Menu → Controle Semanal
2. Veja calendário de 12 semanas
3. Clique "Nova Nota" para criar com período pré-preenchido
4. Ou clique "Sem movimento" para marcar semana sem abastecimentos

---

## 🔧 Tecnologias

- **Frontend:** HTML5, CSS3, JavaScript (Vanilla)
- **Banco de Dados:** Supabase (PostgreSQL)
- **Gráficos:** Chart.js
- **Ícones:** Lucide
- **PDF:** jsPDF
- **Hospedagem:** GitHub Pages

---

## 📦 Estrutura de Dados

### Tabelas Principais

- `fornecedores` - Postos e fornecedores
- `contratos` - Contratos de fornecimento
- `atas` - Atas de Registro de Preços
- `documentos` - Empenhos e AFTs
- `motoristas` - Motoristas da frota
- `veiculos` - Veículos da frota
- `notas` - Notas fiscais de combustível
- `itens` - Itens de abastecimento
- `semanas_sem_movimento` ⭐ NOVA - Semanas sem movimentação
- `fiscal` - Dados do fiscal responsável

### Relacionamentos

```
contratos/atas → documentos (empenhos)
documentos → notas
notas → itens (abastecimentos)
itens → veiculos, motoristas
```

---

## 🧪 Solução de Problemas

### Sistema pede Firebase/login

**Problema:** Cache do navegador com versão antiga  
**Solução:**
1. `Ctrl + Shift + Delete` → Limpar cache
2. Fechar e reabrir navegador
3. Verificar se aparece badge "✓ SUPABASE ONLINE"

### Erro na linha 3711

**Problema:** Arquivo antigo em cache  
**Solução:** Mesmo procedimento acima

### Erros CSP no Console

**Exemplo:**
```
Loading the font '...' violates CSP directive
```

**Resposta:** NORMAL e esperado no GitHub Pages. Sistema usa fontes locais. Pode ignorar.

### Funcionalidades não salvam

**Verificar:**
1. Credenciais Supabase corretas no `index.html`?
2. Tabelas criadas no Supabase?
3. Console (F12) mostra erros vermelhos?

---

## 📚 Documentação Adicional

- `CONTROLE_SEMANAL_DOCUMENTACAO.md` - Guia completo Controle Semanal
- `FUNCIONALIDADE_SEM_MOVIMENTO.md` - Como marcar semanas sem movimento
- `GUIA_DEPLOY_GITHUB_PAGES.md` - Deploy e troubleshooting
- `criar_tabela_semanas_sem_movimento.sql` - Script SQL da nova funcionalidade

---

## 🔐 Segurança

- ✅ Credenciais via Supabase (nunca exponha a chave secreta)
- ✅ RLS (Row Level Security) recomendado no Supabase
- ✅ Backup periódico via menu "Backup & Restaurar"
- ✅ GitHub Pages serve HTTPS automaticamente

---

## 📞 Suporte

**Problemas comuns resolvidos em:**
- `SOLUCAO_FIREBASE_FINAL.md` - Problema Firebase/cache
- `IDENTIFICAR_VERSAO.md` - Como saber qual versão está carregando
- `CHECKLIST_TESTE.md` - Verificação pós-deploy

---

## 📝 Changelog

### Versão Março 2026 (Atual)

✨ **Novidades:**
- Controle Semanal de Notas Fiscais
- Marcar semanas sem movimento
- Badge "SUPABASE ONLINE" no menu
- Indicadores visuais de versão

🔧 **Correções:**
- Migração completa Firebase → Supabase
- Erro sintaxe linha 3711 corrigido
- Sincronização valor_total de notas
- 3 casas decimais para litros
- Campos modelo/ano de veículos
- Campos CPF/CNH de motoristas
- Saldo inicial de empenhos separado

---

## ⚖️ Licença

Sistema desenvolvido para AMTC - Autarquia Municipal de Transporte Coletivo de Rondonópolis/MT.

---

## 🎯 Resumo Deploy

```bash
1. Criar projeto Supabase
2. Executar SQL (tabelas)
3. Copiar URL e Key
4. Editar index.html (linhas 1023-1024)
5. Upload para GitHub
6. Ativar GitHub Pages
7. Aguardar build (2-5 min)
8. Limpar cache navegador
9. Acessar sistema
10. Verificar badge verde ✓
```

**Pronto!** 🚀

---

**Sistema 100% Supabase. Se você vê Firebase, limpe o cache do navegador!**
