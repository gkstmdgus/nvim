# Neovim 플러그인 구성

이 문서는 `/lua/plugins` 폴더에 있는 모든 플러그인들의 기능과 목적을 설명합니다.

## 🎨 UI/UX 플러그인

### 1. **tokyonight.nvim** (`color-scheme.lua`)
- **목적**: 컬러 스키마 적용
- **기능**: 
  - Tokyo Night 테마 적용 (moon 스타일)
  - 투명 배경 지원
  - 터미널 컬러 지원
  - 사이드바, 플로팅 윈도우 투명 처리

### 2. **transparent.nvim** (`transparent.lua`)
- **목적**: Neovim UI 배경 투명화
- **기능**:
  - 상태라인, 탭라인, 플로팅 윈도우 등 UI 영역 배경색 제거
  - 특정 하이라이트 그룹 예외 처리 가능
  - colorscheme와 독립적으로 동작

### 3. **lualine.nvim** (`lualine.lua`)
- **목적**: 상태라인 커스터마이징
- **기능**: 
  - 하단 상태라인을 커스터마이징 가능
  - Tokyo Night 테마 적용

### 4. **bufferline.nvim** (`bufferline.lua`)
- **목적**: 버퍼 탭 표시
- **기능**: 
  - 에디터 상단에 여러 버퍼를 탭 형태로 나열
  - nvim-web-devicons 의존성

### 5. **indent-blankline.nvim** (`indent_blankline.lua`)
- **목적**: 들여쓰기 시각화
- **기능**:
  - 들여쓰기 가이드 라인 표시
  - 스마트한 라인 하이라이트
  - 사용자 정의 가능한 스타일 (실선, 점선, 색상, 너비)
  - 대용량 파일에서도 빠른 성능

## 🔍 탐색 및 검색 플러그인

### 6. **neo-tree.nvim** (`neo-tree.lua`)
- **목적**: 파일 탐색기
- **기능**: 
  - 트리 구조로 파일 탐색
  - nvim-web-devicons, plenary.nvim, nui.nvim 의존성

### 7. **telescope.nvim** (`telescope.lua`)
- **목적**: 파일/버퍼/심볼 검색
- **기능**:
  - 파일 검색 (`<leader>ff`)
  - 라이브 그렙 (`<leader>fg`)
  - 버퍼 검색 (`<leader>fb`)
  - 헬프 태그 검색 (`<leader>fh`)
  - 드롭다운 UI 지원

## 💻 개발 도구 플러그인

### 8. **nvim-treesitter** (`nvim_treesitter.lua`)
- **목적**: 코드 파싱 및 하이라이팅 개선
- **기능**:
  - 더 정확한 구문 하이라이팅 (AST 기반)
  - 코드 접기(folding) 지원
  - 코드 탐색 & 텍스트 객체
  - Incremental selection
  - 지원 언어: C, Lua, Vim, JavaScript, HTML, Python

### 9. **nvim-lspconfig** (`lsp.lua`)
- **목적**: LSP (Language Server Protocol) 지원
- **구성**:
  - **mason.nvim**: LSP 서버, DAP 어댑터, 린터, 포맷터 관리
  - **mason-lspconfig.nvim**: mason으로 설치한 LSP 설정 적용
  - **nvim-lspconfig**: Neovim에서 LSP 사용
- **지원 언어**: Lua, TypeScript, C++, Python
- **키맵**: `K` (hover), `gd` (definition), `<leader>ca` (code action)

### 10. **nvim-cmp** (`nv-cmp.lua`)
- **목적**: 자동완성 엔진
- **기능**:
  - LSP 연동 자동완성
  - 스니펫 엔진 (LuaSnip)
  - 버퍼, 파일 경로 자동완성
  - VSCode 스니펫 지원
  - 키맵: `<C-Space>` (완성), `<CR>` (확인), `<C-e>` (취소)

### 11. **conform.nvim** (`conform.lua`)
- **목적**: 코드 포맷팅
- **기능**:
  - 파일 저장 시 자동 포맷팅
  - 언어별 포맷터 설정 (Lua: stylua, Python: isort+black, Rust: rustfmt, JS: prettier)
  - 수동 포맷팅 (`<Leader>l`)

### 12. **nvim-dap** (`nvim-dap.lua`)
- **목적**: 디버깅 지원
- **기능**:
  - DAP (Debug Adapter Protocol) 지원
  - Python 디버깅 지원
  - 디버그 UI 자동 열기/닫기
  - 키맵: `<leader>dt` (브레이크포인트), `<leader>dc` (계속), `<leader>do` (스텝 오버), `<leader>di` (스텝 인투), `<leader>dO` (스텝 아웃), `<leader>dq` (종료), `<leader>du` (UI 토글)

## 🛠️ 편의 기능 플러그인

### 13. **Comment.nvim** (`comment.lua`)
- **목적**: 주석 관리
- **기능**:
  - 라인 주석 (`gcc`)
  - 블록 주석 (비주얼 모드)
  - 스마트 토글
  - 파일 타입별 자동 주석 문법 감지

### 14. **nvim-autopairs** (`nvim-autopairs.lua`)
- **목적**: 자동 괄호/따옴표 완성
- **기능**: 입력 시 자동으로 괄호, 따옴표 쌍 완성

### 15. **code_runner.nvim** (`neo-runner.lua`)
- **목적**: 코드 실행
- **기능**:
  - `:RunCode` - 현재 코드 실행
  - `:RunFile` - 현재 파일 실행
  - `:RunProject` - 프로젝트 단위 실행
  - `:RunClose` - 실행 창 닫기

### 16. **nvim-ufo** (`nvim-ufo.lua`)
- **목적**: 코드 접기 (Universal Fold)
- **기능**:
  - `zc` - 현재 블록 접기
  - `zo` - 현재 블록 열기
  - `zR` - 모든 블록 열기
  - `zM` - 모든 블록 접기
  - 접힌 코드 미리보기

## 🔧 Git 관련 플러그인

### 17. **gitsigns.nvim** (`git.lua`)
- **목적**: Git 관련 기능
- **기능**:
  - Git 변경사항 표시
  - 키맵: `]c`/`[c` (변경사항 이동), `<leader>hs` (스테이징), `<leader>hr` (리셋), `<leader>hp` (미리보기), `<leader>hb` (블레임)

### 18. **vim-fugitive** (`git.lua`)
- **목적**: Git 명령어 통합
- **기능**:
  - `<leader>gs` - Git 상태
  - `<leader>gb` - Git 브랜치
  - `<leader>gg` - Git 그래프

## 🎯 유틸리티 플러그인

### 19. **bufdelete.nvim** (`bufdelete.lua`)
- **목적**: 버퍼 삭제 개선
- **기능**:
  - `:bdelete` - 버퍼 삭제 (neo-tree 레이아웃 보존)
  - `:Bwipeout` - 버퍼 완전 삭제

### 20. **which-key.nvim** (`which-key.lua`)
- **목적**: 키맵 안내
- **기능**:
  - 리더키 매핑 힌트 표시
  - 키맵 자동 문서화
  - 그룹핑된 키맵 메뉴
  - 학습 도우미 역할

## 📝 요약

이 Neovim 설정은 다음과 같은 기능들을 제공합니다:

- **개발 환경**: LSP, 자동완성, 디버깅, 포맷팅
- **UI/UX**: 현대적인 테마, 투명 효과, 상태라인, 버퍼 탭
- **탐색**: 파일 탐색기, 빠른 검색
- **편의성**: 주석, 자동 괄호, 코드 실행, 코드 접기
- **Git 통합**: 변경사항 추적, Git 명령어
- **학습 도우미**: 키맵 안내

모든 플러그인은 lazy.nvim을 통해 관리되며, 각각의 특정 목적에 맞게 최적화되어 있습니다.
