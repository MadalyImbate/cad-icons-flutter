/**
 * CAD Icons Catalog — Flutter
 * Minimalist shadcn/ui & Iconsax inspired interaction engine
 */

document.addEventListener('DOMContentLoaded', () => {
  // --- Data State ---
  const allIcons = window.ICONS_DATA || [];
  let filteredIcons = [...allIcons];
  let selectedCategory = 'all';
  let searchQuery = '';
  let activeIconIndex = 0;

  // Grid styling state
  let currentGridColor = 'default';
  let currentGridSize = 'md';

  // Modal customization state
  let modalColor = 'default';
  let modalFlutterColorName = 'Colors.white';
  let modalSize = 48;
  let modalBg = 'checker-dark';
  let activeTab = 'package';

  // --- DOM Elements ---
  const iconsGrid = document.getElementById('iconsGrid');
  const searchInput = document.getElementById('searchInput');
  const clearSearchBtn = document.getElementById('clearSearchBtn');
  const visibleCount = document.getElementById('visibleCount');
  const totalCount = document.getElementById('totalCount');
  const emptyState = document.getElementById('emptyState');
  const emptyQueryText = document.getElementById('emptyQueryText');
  const resetSearchBtn = document.getElementById('resetSearchBtn');
  const activeFilterChip = document.getElementById('activeFilterChip');
  const activeFilterName = document.getElementById('activeFilterName');
  const clearActiveFilterBtn = document.getElementById('clearActiveFilterBtn');

  // Dropdowns (shadcn Selects)
  const categoryTrigger = document.getElementById('categoryTrigger');
  const categoryMenu = document.getElementById('categoryMenu');
  const categorySelectedLabel = document.getElementById('categorySelectedLabel');
  const categoryCountBadge = document.getElementById('categoryCountBadge');

  const colorTrigger = document.getElementById('colorTrigger');
  const colorMenu = document.getElementById('colorMenu');
  const currentColorDot = document.getElementById('currentColorDot');
  const currentColorText = document.getElementById('currentColorText');
  const gridCustomColorInput = document.getElementById('gridCustomColorInput');

  // Segment Buttons
  const sizeBtns = document.querySelectorAll('.segmented-control .segment-btn');

  // Header Actions
  const themeToggleBtn = document.getElementById('themeToggleBtn');
  const openGuideBtn = document.getElementById('openGuideBtn');

  // Detail Dialog Elements
  const detailModal = document.getElementById('detailModal');
  const modalBackdrop = document.getElementById('modalBackdrop');
  const modalCloseBtn = document.getElementById('modalCloseBtn');
  const modalPrevBtn = document.getElementById('modalPrevBtn');
  const modalNextBtn = document.getElementById('modalNextBtn');
  const modalIconTitle = document.getElementById('modalIconTitle');
  const modalIconCategory = document.getElementById('modalIconCategory');
  const modalPreviewBox = document.getElementById('modalPreviewBox');
  const modalSvgContainer = document.getElementById('modalSvgContainer');
  const modalSizeSlider = document.getElementById('modalSizeSlider');
  const modalSizeVal = document.getElementById('modalSizeVal');
  const modalCustomColor = document.getElementById('modalCustomColor');
  const modalColorDots = document.querySelectorAll('.m-dot[data-color]');
  const modalBgBtns = document.querySelectorAll('.bg-opt-btn');
  const tabTriggers = document.querySelectorAll('.tab-trigger');
  const tabPanes = document.querySelectorAll('.tab-pane');
  const codePackage = document.getElementById('code-package');
  const codeAsset = document.getElementById('code-asset');
  const codeString = document.getElementById('code-string');
  const codeRaw = document.getElementById('code-raw');
  const modalEnumText = document.getElementById('modalEnumText');
  const copyEnumBtn = document.getElementById('copyEnumBtn');
  const downloadSvgBtn = document.getElementById('downloadSvgBtn');

  // Guide Dialog Elements
  const guideModal = document.getElementById('guideModal');
  const guideBackdrop = document.getElementById('guideBackdrop');
  const guideCloseBtn = document.getElementById('guideCloseBtn');

  // Toast
  const toast = document.getElementById('toast');
  const toastMessage = document.getElementById('toastMessage');
  let toastTimer = null;

  // --- Initialization ---
  totalCount.textContent = allIcons.length;
  categoryCountBadge.textContent = allIcons.length;
  initTheme();
  buildCategoryMenu();
  filterAndRender();

  // ============================================================
  // Theme Management (shadcn standard .dark on <html>)
  // ============================================================
  function initTheme() {
    const saved = localStorage.getItem('cad_icons_theme');
    if (saved === 'light') {
      document.documentElement.classList.remove('dark');
    } else {
      document.documentElement.classList.add('dark');
    }
  }

  themeToggleBtn.addEventListener('click', () => {
    const isDark = document.documentElement.classList.toggle('dark');
    localStorage.setItem('cad_icons_theme', isDark ? 'dark' : 'light');
    if (currentGridColor === 'default') {
      currentColorDot.style.background = 'currentColor';
    }
  });

  // ============================================================
  // Category Dropdown (shadcn Select)
  // ============================================================
  function getCategoryCounts() {
    const counts = { all: allIcons.length };
    allIcons.forEach(icon => {
      counts[icon.category] = (counts[icon.category] || 0) + 1;
    });
    return counts;
  }

  function buildCategoryMenu() {
    const counts = getCategoryCounts();
    const categories = Object.keys(counts).filter(c => c !== 'all').sort();

    categoryMenu.innerHTML = '';

    // "Todas as Categorias" item
    const allItem = document.createElement('div');
    allItem.className = `dropdown-item ${selectedCategory === 'all' ? 'active' : ''}`;
    allItem.dataset.category = 'all';
    allItem.innerHTML = `
      <div class="item-left">
        <span>Todas as Categorias</span>
      </div>
      <span class="item-count">${counts.all}</span>
    `;
    allItem.addEventListener('click', () => selectCategory('all', 'Todas as Categorias', counts.all));
    categoryMenu.appendChild(allItem);

    // Individual categories
    categories.forEach(cat => {
      const item = document.createElement('div');
      item.className = `dropdown-item ${selectedCategory === cat ? 'active' : ''}`;
      item.dataset.category = cat;
      item.innerHTML = `
        <div class="item-left">
          <span>${cat}</span>
        </div>
        <span class="item-count">${counts[cat]}</span>
      `;
      item.addEventListener('click', () => selectCategory(cat, cat, counts[cat]));
      categoryMenu.appendChild(item);
    });
  }

  function selectCategory(cat, label, count) {
    selectedCategory = cat;
    categorySelectedLabel.textContent = label;
    categoryCountBadge.textContent = count;
    closeAllDropdowns();

    // Update active class in menu
    document.querySelectorAll('#categoryMenu .dropdown-item').forEach(el => {
      el.classList.toggle('active', el.dataset.category === cat);
    });

    // Update active filter chip
    if (cat === 'all') {
      activeFilterChip.classList.add('hidden');
    } else {
      activeFilterName.textContent = label;
      activeFilterChip.classList.remove('hidden');
    }

    filterAndRender();
  }

  categoryTrigger.addEventListener('click', (e) => {
    e.stopPropagation();
    colorMenu.classList.add('hidden');
    categoryMenu.classList.toggle('hidden');
    categoryTrigger.setAttribute('aria-expanded', !categoryMenu.classList.contains('hidden'));
  });

  clearActiveFilterBtn.addEventListener('click', () => {
    selectCategory('all', 'Todas as Categorias', allIcons.length);
  });

  // ============================================================
  // Color Dropdown
  // ============================================================
  colorTrigger.addEventListener('click', (e) => {
    e.stopPropagation();
    categoryMenu.classList.add('hidden');
    colorMenu.classList.toggle('hidden');
  });

  document.querySelectorAll('.color-swatch-item').forEach(item => {
    item.addEventListener('click', () => {
      document.querySelectorAll('.color-swatch-item').forEach(el => el.classList.remove('active'));
      item.classList.add('active');

      const color = item.dataset.color;
      currentGridColor = color;

      if (color === 'default') {
        currentColorDot.style.background = 'currentColor';
        currentColorText.textContent = 'Padrão';
      } else {
        currentColorDot.style.background = color;
        currentColorText.textContent = item.querySelector('span:last-child').textContent;
      }

      applyGridColor(color);
      closeAllDropdowns();
    });
  });

  gridCustomColorInput.addEventListener('input', (e) => {
    const color = e.target.value;
    currentGridColor = color;
    currentColorDot.style.background = color;
    currentColorText.textContent = color.toUpperCase();
    document.querySelectorAll('.color-swatch-item').forEach(el => el.classList.remove('active'));
    applyGridColor(color);
  });

  function applyGridColor(color) {
    document.querySelectorAll('.icon-card-preview').forEach(el => {
      el.style.color = color === 'default' ? '' : color;
    });
  }

  // Close dropdowns when clicking outside
  document.addEventListener('click', () => {
    closeAllDropdowns();
  });

  function closeAllDropdowns() {
    categoryMenu.classList.add('hidden');
    colorMenu.classList.add('hidden');
    categoryTrigger.setAttribute('aria-expanded', 'false');
  }

  // ============================================================
  // Size Segmented Control
  // ============================================================
  sizeBtns.forEach(btn => {
    btn.addEventListener('click', () => {
      sizeBtns.forEach(b => b.classList.remove('active'));
      btn.classList.add('active');
      currentGridSize = btn.dataset.size;
      iconsGrid.className = `icons-grid size-${currentGridSize}`;
    });
  });

  // ============================================================
  // Filtering & Rendering Grid
  // ============================================================
  function filterAndRender() {
    const q = searchQuery.trim().toLowerCase();

    filteredIcons = allIcons.filter(icon => {
      const matchCategory = selectedCategory === 'all' || icon.category === selectedCategory;
      if (!matchCategory) return false;

      if (!q) return true;

      const matchName = icon.name.toLowerCase().includes(q);
      const matchTitle = icon.title.toLowerCase().includes(q);
      const matchEnum = icon.enumName && icon.enumName.toLowerCase().includes(q);
      const matchTags = icon.tags && icon.tags.some(tag => tag.toLowerCase().includes(q));

      return matchName || matchTitle || matchEnum || matchTags;
    });

    visibleCount.textContent = filteredIcons.length;

    if (filteredIcons.length === 0) {
      iconsGrid.classList.add('hidden');
      emptyState.classList.remove('hidden');
      emptyQueryText.textContent = searchQuery;
    } else {
      iconsGrid.classList.remove('hidden');
      emptyState.classList.add('hidden');
      renderGrid();
    }
  }

  function renderGrid() {
    iconsGrid.innerHTML = '';
    const fragment = document.createDocumentFragment();

    filteredIcons.forEach((icon, index) => {
      const card = document.createElement('div');
      card.className = 'icon-card';
      card.dataset.index = index;
      card.title = `${icon.name} (${icon.category})`;

      card.innerHTML = `
        <div class="icon-card-preview" style="${currentGridColor !== 'default' ? `color: ${currentGridColor};` : ''}">
          ${icon.svg}
        </div>
        <div class="icon-card-title">${icon.name}</div>
        <button class="card-quick-pill" data-action="quick-copy">Copiar</button>
      `;

      card.addEventListener('click', (e) => {
        if (e.target.closest('[data-action="quick-copy"]')) {
          e.stopPropagation();
          copySnippetQuick(icon);
          return;
        }
        openDetailDialog(index);
      });

      fragment.appendChild(card);
    });

    iconsGrid.appendChild(fragment);
  }

  function copySnippetQuick(icon) {
    const code = `CadIcons(CadIcon.${icon.enumName})`;
    copyToClipboard(code, `CadIcon.${icon.enumName} copiado!`);
  }

  // ============================================================
  // Search Input Handling
  // ============================================================
  searchInput.addEventListener('input', (e) => {
    searchQuery = e.target.value;
    clearSearchBtn.classList.toggle('visible', searchQuery.length > 0);
    filterAndRender();
  });

  clearSearchBtn.addEventListener('click', () => {
    searchInput.value = '';
    searchQuery = '';
    clearSearchBtn.classList.remove('visible');
    searchInput.focus();
    filterAndRender();
  });

  resetSearchBtn.addEventListener('click', () => {
    searchInput.value = '';
    searchQuery = '';
    clearSearchBtn.classList.remove('visible');
    selectCategory('all', 'Todas as Categorias', allIcons.length);
  });

  // Keyboard shortcut: '⌘K' or '/' to focus search, Esc to close
  document.addEventListener('keydown', (e) => {
    if ((e.key === '/' || ((e.metaKey || e.ctrlKey) && e.key.toLowerCase() === 'k')) && document.activeElement !== searchInput && !isDialogOpen()) {
      e.preventDefault();
      searchInput.focus();
    } else if (e.key === 'Escape') {
      if (isDialogOpen()) {
        closeDialogs();
      } else if (!categoryMenu.classList.contains('hidden') || !colorMenu.classList.contains('hidden')) {
        closeAllDropdowns();
      } else if (searchInput.value) {
        searchInput.value = '';
        searchQuery = '';
        clearSearchBtn.classList.remove('visible');
        filterAndRender();
      }
    } else if (isDialogOpen() && guideModal.classList.contains('hidden')) {
      if (e.key === 'ArrowLeft') {
        navigateDialog(-1);
      } else if (e.key === 'ArrowRight') {
        navigateDialog(1);
      }
    }
  });

  function isDialogOpen() {
    return !detailModal.classList.contains('hidden') || !guideModal.classList.contains('hidden');
  }

  function closeDialogs() {
    detailModal.classList.add('hidden');
    guideModal.classList.add('hidden');
    document.body.style.overflow = '';
  }

  // ============================================================
  // Detail Dialog (shadcn Dialog style)
  // ============================================================
  function openDetailDialog(index) {
    activeIconIndex = index;
    updateDialogContent();
    detailModal.classList.remove('hidden');
    document.body.style.overflow = 'hidden';
  }

  function navigateDialog(step) {
    if (filteredIcons.length === 0) return;
    activeIconIndex = (activeIconIndex + step + filteredIcons.length) % filteredIcons.length;
    updateDialogContent();
  }

  modalPrevBtn.addEventListener('click', () => navigateDialog(-1));
  modalNextBtn.addEventListener('click', () => navigateDialog(1));
  modalCloseBtn.addEventListener('click', closeDialogs);
  modalBackdrop.addEventListener('click', closeDialogs);

  function updateDialogContent() {
    const icon = filteredIcons[activeIconIndex];
    if (!icon) return;

    modalIconTitle.textContent = icon.title;
    modalIconCategory.textContent = icon.category;
    modalEnumText.textContent = `CadIcon.${icon.enumName}`;

    modalSvgContainer.innerHTML = icon.svg;
    modalSvgContainer.style.width = `${modalSize}px`;
    modalSvgContainer.style.height = `${modalSize}px`;

    applyModalSvgColor();
    updateDialogSnippets(icon);
  }

  function applyModalSvgColor() {
    if (modalColor === 'default') {
      modalSvgContainer.style.color = 'currentColor';
    } else {
      modalSvgContainer.style.color = modalColor;
    }
  }

  function updateDialogSnippets(icon) {
    const colorCode = modalFlutterColorName.startsWith('Colors.')
      ? modalFlutterColorName
      : `Color(0xFF${modalColor.replace('#', '').toUpperCase()})`;

    // Tab 1: CadIcons (Standard Flutter widget)
    codePackage.textContent = 
`CadIcons(
  CadIcon.${icon.enumName},
  size: ${modalSize}.0,
  color: ${colorCode},
)`;

    // Tab 2: SvgPicture.asset via package
    codeAsset.textContent = 
`SvgPicture.asset(
  'assets/icons/${icon.filename}',
  package: 'cad_icons_flutter',
  width: ${modalSize}.0,
  height: ${modalSize}.0,
  theme: const SvgTheme(currentColor: ${colorCode}),
)`;

    // Tab 3: SvgPicture.string
    codeString.textContent = 
`SvgPicture.string(
  '''${icon.svg}''',
  width: ${modalSize}.0,
  height: ${modalSize}.0,
  theme: const SvgTheme(currentColor: ${colorCode}),
)`;

    // Tab 4: Raw SVG
    codeRaw.textContent = icon.svg;
  }

  // Dialog Background toggles
  modalBgBtns.forEach(btn => {
    btn.addEventListener('click', () => {
      modalBgBtns.forEach(b => b.classList.remove('active'));
      btn.classList.add('active');
      modalBg = btn.dataset.bg;
      modalPreviewBox.className = `canvas-box ${modalBg}`;
    });
  });

  // Dialog Size slider
  modalSizeSlider.addEventListener('input', (e) => {
    modalSize = parseInt(e.target.value, 10);
    modalSizeVal.textContent = `${modalSize}px`;
    modalSvgContainer.style.width = `${modalSize}px`;
    modalSvgContainer.style.height = `${modalSize}px`;
    const icon = filteredIcons[activeIconIndex];
    if (icon) updateDialogSnippets(icon);
  });

  // Dialog Color palette
  modalColorDots.forEach(dot => {
    dot.addEventListener('click', () => {
      modalColorDots.forEach(d => d.classList.remove('active'));
      dot.classList.add('active');
      modalColor = dot.dataset.color;
      modalFlutterColorName = dot.dataset.flutter || 'Colors.blue';
      applyModalSvgColor();
      const icon = filteredIcons[activeIconIndex];
      if (icon) updateDialogSnippets(icon);
    });
  });

  modalCustomColor.addEventListener('input', (e) => {
    modalColorDots.forEach(d => d.classList.remove('active'));
    modalColor = e.target.value;
    modalFlutterColorName = `Color(0xFF${modalColor.replace('#', '').toUpperCase()})`;
    applyModalSvgColor();
    const icon = filteredIcons[activeIconIndex];
    if (icon) updateDialogSnippets(icon);
  });

  // Dialog Tabs
  tabTriggers.forEach(tab => {
    tab.addEventListener('click', () => {
      tabTriggers.forEach(t => t.classList.remove('active'));
      tabPanes.forEach(p => p.classList.remove('active'));
      tab.classList.add('active');
      activeTab = tab.dataset.tab;
      document.getElementById(`tab-${activeTab}`).classList.add('active');
    });
  });

  // Download SVG
  downloadSvgBtn.addEventListener('click', () => {
    const icon = filteredIcons[activeIconIndex];
    if (!icon) return;

    const blob = new Blob([icon.svg], { type: 'image/svg+xml;charset=utf-8' });
    const url = URL.createObjectURL(blob);
    const a = document.createElement('a');
    a.href = url;
    a.download = icon.filename;
    document.body.appendChild(a);
    a.click();
    document.body.removeChild(a);
    URL.revokeObjectURL(url);

    showToast(`Arquivo "${icon.filename}" baixado!`);
  });

  // Copy Enum Button
  copyEnumBtn.addEventListener('click', () => {
    const icon = filteredIcons[activeIconIndex];
    if (!icon) return;
    copyToClipboard(`CadIcon.${icon.enumName}`, `CadIcon.${icon.enumName} copiado!`);
  });

  // Copy Code Buttons inside tabs
  document.querySelectorAll('.copy-code-btn').forEach(btn => {
    btn.addEventListener('click', () => {
      const targetId = btn.dataset.target;
      const codeEl = document.getElementById(targetId);
      if (codeEl) {
        copyToClipboard(codeEl.textContent, 'Código copiado com sucesso!');
      }
    });
  });

  // Guide Dialog
  openGuideBtn.addEventListener('click', () => {
    guideModal.classList.remove('hidden');
    document.body.style.overflow = 'hidden';
  });
  guideCloseBtn.addEventListener('click', closeDialogs);
  guideBackdrop.addEventListener('click', closeDialogs);

  // ============================================================
  // Clipboard & Toast System (Sonner style)
  // ============================================================
  function copyToClipboard(text, message = 'Copiado para a área de transferência!') {
    if (navigator.clipboard && window.isSecureContext) {
      navigator.clipboard.writeText(text)
        .then(() => showToast(message))
        .catch(() => fallbackCopy(text, message));
    } else {
      fallbackCopy(text, message);
    }
  }

  function fallbackCopy(text, message) {
    const textarea = document.createElement('textarea');
    textarea.value = text;
    textarea.style.position = 'fixed';
    textarea.style.opacity = '0';
    document.body.appendChild(textarea);
    textarea.focus();
    textarea.select();
    try {
      document.execCommand('copy');
      showToast(message);
    } catch (e) {
      showToast('Falha ao copiar automaticamente.');
    }
    document.body.removeChild(textarea);
  }

  function showToast(message) {
    toastMessage.textContent = message;
    toast.classList.remove('hidden');

    if (toastTimer) clearTimeout(toastTimer);
    toastTimer = setTimeout(() => {
      toast.classList.add('hidden');
    }, 2200);
  }
});
