/**
 * CAD Icons Catalog - Flutter
 * Fast, reactive Vanilla JavaScript App
 */

document.addEventListener('DOMContentLoaded', () => {
  // --- Data State ---
  const allIcons = window.ICONS_DATA || [];
  let filteredIcons = [...allIcons];
  let selectedCategory = 'all';
  let searchQuery = '';
  let activeIconIndex = 0;

  // Grid customization state
  let currentGridColor = '#38bdf8';
  let currentGridSize = 'md';

  // Modal customization state
  let modalColor = '#38bdf8';
  let modalFlutterColorName = 'Colors.lightBlue';
  let modalSize = 48;
  let modalBg = 'checker-dark';
  let activeTab = 'package';

  // --- DOM Elements ---
  const iconsGrid = document.getElementById('iconsGrid');
  const searchInput = document.getElementById('searchInput');
  const clearSearchBtn = document.getElementById('clearSearchBtn');
  const categoriesBar = document.getElementById('categoriesBar');
  const visibleCount = document.getElementById('visibleCount');
  const totalCount = document.getElementById('totalCount');
  const emptyState = document.getElementById('emptyState');
  const emptyQueryText = document.getElementById('emptyQueryText');
  const resetSearchBtn = document.getElementById('resetSearchBtn');
  const activeFilterBadge = document.getElementById('activeFilterBadge');

  // Header controls
  const themeToggleBtn = document.getElementById('themeToggleBtn');
  const gridCustomColor = document.getElementById('gridCustomColor');
  const gridColorDots = document.querySelectorAll('.color-picker-control .color-dot[data-color]');
  const sizeBtns = document.querySelectorAll('.size-btn');
  const openGuideBtn = document.getElementById('openGuideBtn');

  // Detail Modal Elements
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
  const modalColorDots = document.querySelectorAll('.m-color-dot[data-color]');
  const modalBgBtns = document.querySelectorAll('.bg-btn');
  const tabBtns = document.querySelectorAll('.tab-btn');
  const tabPanes = document.querySelectorAll('.tab-pane');
  const codePackage = document.getElementById('code-package');
  const codeAsset = document.getElementById('code-asset');
  const codeString = document.getElementById('code-string');
  const codeRaw = document.getElementById('code-raw');
  const modalEnumText = document.getElementById('modalEnumText');
  const copyEnumBtn = document.getElementById('copyEnumBtn');
  const downloadSvgBtn = document.getElementById('downloadSvgBtn');

  // Guide Modal Elements
  const guideModal = document.getElementById('guideModal');
  const guideBackdrop = document.getElementById('guideBackdrop');
  const guideCloseBtn = document.getElementById('guideCloseBtn');

  // Toast
  const toast = document.getElementById('toast');
  const toastMessage = document.getElementById('toastMessage');
  let toastTimer = null;

  // --- Initialize UI ---
  totalCount.textContent = allIcons.length;
  renderCategories();
  applyStoredTheme();
  filterAndRender();

  // ============================================================
  // Categories Rendering & Filtering
  // ============================================================
  function getCategoriesWithCounts() {
    const counts = { all: allIcons.length };
    allIcons.forEach(icon => {
      counts[icon.category] = (counts[icon.category] || 0) + 1;
    });
    return counts;
  }

  function renderCategories() {
    const counts = getCategoriesWithCounts();
    const categories = Object.keys(counts).filter(c => c !== 'all').sort();

    categoriesBar.innerHTML = '';

    // "Todos" button
    const allPill = document.createElement('button');
    allPill.className = `cat-pill ${selectedCategory === 'all' ? 'active' : ''}`;
    allPill.innerHTML = `Todos <span class="cat-count">${counts.all}</span>`;
    allPill.addEventListener('click', () => setCategory('all'));
    categoriesBar.appendChild(allPill);

    categories.forEach(cat => {
      const pill = document.createElement('button');
      pill.className = `cat-pill ${selectedCategory === cat ? 'active' : ''}`;
      pill.innerHTML = `${cat} <span class="cat-count">${counts[cat]}</span>`;
      pill.addEventListener('click', () => setCategory(cat));
      categoriesBar.appendChild(pill);
    });
  }

  function setCategory(cat) {
    selectedCategory = cat;
    document.querySelectorAll('.cat-pill').forEach(pill => {
      const isAll = cat === 'all' && pill.textContent.startsWith('Todos');
      const isMatch = pill.textContent.startsWith(cat);
      if (isAll || isMatch) {
        pill.classList.add('active');
        pill.scrollIntoView({ behavior: 'smooth', block: 'nearest', inline: 'center' });
      } else {
        pill.classList.remove('active');
      }
    });

    if (cat === 'all') {
      activeFilterBadge.classList.add('hidden');
    } else {
      activeFilterBadge.textContent = cat;
      activeFilterBadge.classList.remove('hidden');
    }

    filterAndRender();
  }

  // ============================================================
  // Filtering & Rendering Grid
  // ============================================================
  function filterAndRender() {
    const q = searchQuery.trim().toLowerCase();

    filteredIcons = allIcons.filter(icon => {
      const matchCategory = selectedCategory === 'all' || icon.category === selectedCategory;
      if (!matchCategory) return false;

      if (!q) return true;

      // Match name, title, tags, or enumName
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
      renderGridIcons();
    }
  }

  function renderGridIcons() {
    iconsGrid.innerHTML = '';
    const fragment = document.createDocumentFragment();

    filteredIcons.forEach((icon, index) => {
      const card = document.createElement('div');
      card.className = 'icon-card';
      card.dataset.index = index;

      card.innerHTML = `
        <div class="card-quick-actions">
          <button class="card-quick-btn" title="Copiar código CadIcons(CadIcon.${icon.enumName})" data-action="quick-copy">
            <svg viewBox="0 0 24 24" width="14" height="14" fill="currentColor">
              <path d="M16 1H4c-1.1 0-2 .9-2 2v14h2V3h12V1zm3 4H8c-1.1 0-2 .9-2 2v14c0 1.1.9 2 2 2h11c1.1 0 2-.9 2-2V7c0-1.1-.9-2-2-2zm0 16H8V7h11v14z"/>
            </svg>
          </button>
        </div>
        <div class="icon-card-preview" style="color: ${currentGridColor};">
          ${icon.svg}
        </div>
        <div class="icon-card-title">${icon.name}</div>
        <div class="icon-card-cat">${icon.category}</div>
      `;

      // Click card to open modal
      card.addEventListener('click', (e) => {
        if (e.target.closest('[data-action="quick-copy"]')) {
          e.stopPropagation();
          copyFlutterSnippetQuick(icon);
          return;
        }
        openDetailModal(index);
      });

      fragment.appendChild(card);
    });

    iconsGrid.appendChild(fragment);
  }

  // Quick copy snippet from card hover button
  function copyFlutterSnippetQuick(icon) {
    const snippet = `CadIcons(CadIcon.${icon.enumName})`;
    copyToClipboard(snippet, `Snippet de "CadIcon.${icon.enumName}" copiado!`);
  }

  // ============================================================
  // Search Box Event Listeners
  // ============================================================
  searchInput.addEventListener('input', (e) => {
    searchQuery = e.target.value;
    if (searchQuery.length > 0) {
      clearSearchBtn.classList.add('visible');
    } else {
      clearSearchBtn.classList.remove('visible');
    }
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
    selectedCategory = 'all';
    renderCategories();
    activeFilterBadge.classList.add('hidden');
    filterAndRender();
  });

  // Keyboard shortcut '/' to search
  document.addEventListener('keydown', (e) => {
    if (e.key === '/' && document.activeElement !== searchInput && !isModalOpen()) {
      e.preventDefault();
      searchInput.focus();
    } else if (e.key === 'Escape') {
      if (isModalOpen()) {
        closeModals();
      } else if (searchInput.value) {
        searchInput.value = '';
        searchQuery = '';
        clearSearchBtn.classList.remove('visible');
        filterAndRender();
      }
    } else if (isModalOpen() && guideModal.classList.contains('hidden')) {
      if (e.key === 'ArrowLeft') {
        navigateModal(-1);
      } else if (e.key === 'ArrowRight') {
        navigateModal(1);
      }
    }
  });

  function isModalOpen() {
    return !detailModal.classList.contains('hidden') || !guideModal.classList.contains('hidden');
  }

  function closeModals() {
    detailModal.classList.add('hidden');
    guideModal.classList.add('hidden');
    document.body.style.overflow = '';
  }

  // ============================================================
  // Header Controls (Color, Size, Theme)
  // ============================================================
  gridColorDots.forEach(dot => {
    dot.addEventListener('click', () => {
      gridColorDots.forEach(d => d.classList.remove('active'));
      dot.classList.add('active');
      const color = dot.dataset.color;
      updateGridColor(color);
    });
  });

  gridCustomColor.addEventListener('input', (e) => {
    gridColorDots.forEach(d => d.classList.remove('active'));
    updateGridColor(e.target.value);
  });

  function updateGridColor(color) {
    currentGridColor = color;
    document.querySelectorAll('.icon-card-preview').forEach(el => {
      el.style.color = color;
    });
  }

  sizeBtns.forEach(btn => {
    btn.addEventListener('click', () => {
      sizeBtns.forEach(b => b.classList.remove('active'));
      btn.classList.add('active');
      currentGridSize = btn.dataset.size;
      iconsGrid.className = `icons-grid size-${currentGridSize}`;
    });
  });

  themeToggleBtn.addEventListener('click', () => {
    if (document.body.classList.contains('theme-dark')) {
      document.body.classList.replace('theme-dark', 'theme-light');
      localStorage.setItem('cad_icon_theme', 'light');
    } else {
      document.body.classList.replace('theme-light', 'theme-dark');
      localStorage.setItem('cad_icon_theme', 'dark');
    }
  });

  function applyStoredTheme() {
    const saved = localStorage.getItem('cad_icon_theme');
    if (saved === 'light') {
      document.body.classList.replace('theme-dark', 'theme-light');
    } else {
      document.body.classList.replace('theme-light', 'theme-dark');
    }
  }

  // ============================================================
  // Detail Modal & Interactive Preview
  // ============================================================
  function openDetailModal(index) {
    activeIconIndex = index;
    updateModalContent();
    detailModal.classList.remove('hidden');
    document.body.style.overflow = 'hidden';
  }

  function navigateModal(direction) {
    if (filteredIcons.length === 0) return;
    activeIconIndex = (activeIconIndex + direction + filteredIcons.length) % filteredIcons.length;
    updateModalContent();
  }

  modalPrevBtn.addEventListener('click', () => navigateModal(-1));
  modalNextBtn.addEventListener('click', () => navigateModal(1));
  modalCloseBtn.addEventListener('click', closeModals);
  modalBackdrop.addEventListener('click', closeModals);

  function updateModalContent() {
    const icon = filteredIcons[activeIconIndex];
    if (!icon) return;

    modalIconTitle.textContent = icon.title;
    modalIconCategory.textContent = icon.category;
    modalEnumText.textContent = `CadIcon.${icon.enumName}`;

    // Render SVG inside container
    modalSvgContainer.innerHTML = icon.svg;
    modalSvgContainer.style.width = `${modalSize}px`;
    modalSvgContainer.style.height = `${modalSize}px`;
    modalSvgContainer.style.color = modalColor;

    updateCodeSnippets(icon);
  }

  function updateCodeSnippets(icon) {
    const colorCode = modalFlutterColorName.startsWith('Colors.')
      ? modalFlutterColorName
      : `Color(0xFF${modalColor.replace('#', '').toUpperCase()})`;

    // Snippet 1: CadIcons (Package recommended)
    codePackage.textContent = 
`CadIcons(
  CadIcon.${icon.enumName},
  size: ${modalSize}.0,
  color: ${colorCode},
)`;

    // Snippet 2: SvgPicture.asset via package
    codeAsset.textContent = 
`SvgPicture.asset(
  'assets/icons/${icon.filename}',
  package: 'cad_icons_flutter',
  width: ${modalSize}.0,
  height: ${modalSize}.0,
  theme: const SvgTheme(currentColor: ${colorCode}),
)`;

    // Snippet 3: SvgPicture.string (inline SVG)
    codeString.textContent = 
`SvgPicture.string(
  '''${icon.svg}''',
  width: ${modalSize}.0,
  height: ${modalSize}.0,
  theme: const SvgTheme(currentColor: ${colorCode}),
)`;

    // Snippet 4: Raw SVG
    codeRaw.textContent = icon.svg;
  }

  // Modal Background selection
  modalBgBtns.forEach(btn => {
    btn.addEventListener('click', () => {
      modalBgBtns.forEach(b => b.classList.remove('active'));
      btn.classList.add('active');
      modalBg = btn.dataset.bg;
      modalPreviewBox.className = `preview-box ${modalBg}`;
    });
  });

  // Modal Size slider
  modalSizeSlider.addEventListener('input', (e) => {
    modalSize = parseInt(e.target.value, 10);
    modalSizeVal.textContent = `${modalSize}px`;
    modalSvgContainer.style.width = `${modalSize}px`;
    modalSvgContainer.style.height = `${modalSize}px`;
    const icon = filteredIcons[activeIconIndex];
    if (icon) updateCodeSnippets(icon);
  });

  // Modal Color swatches
  modalColorDots.forEach(dot => {
    dot.addEventListener('click', () => {
      modalColorDots.forEach(d => d.classList.remove('active'));
      dot.classList.add('active');
      modalColor = dot.dataset.color;
      modalFlutterColorName = dot.dataset.flutter || 'Colors.blue';
      modalSvgContainer.style.color = modalColor;
      const icon = filteredIcons[activeIconIndex];
      if (icon) updateCodeSnippets(icon);
    });
  });

  modalCustomColor.addEventListener('input', (e) => {
    modalColorDots.forEach(d => d.classList.remove('active'));
    modalColor = e.target.value;
    modalFlutterColorName = `Color(0xFF${modalColor.replace('#', '').toUpperCase()})`;
    modalSvgContainer.style.color = modalColor;
    const icon = filteredIcons[activeIconIndex];
    if (icon) updateCodeSnippets(icon);
  });

  // Modal Tabs
  tabBtns.forEach(btn => {
    btn.addEventListener('click', () => {
      tabBtns.forEach(b => b.classList.remove('active'));
      tabPanes.forEach(p => p.classList.remove('active'));
      btn.classList.add('active');
      activeTab = btn.dataset.tab;
      document.getElementById(`tab-${activeTab}`).classList.add('active');
    });
  });

  // Download SVG
  downloadSvgBtn.addEventListener('click', () => {
    const icon = filteredIcons[activeIconIndex];
    if (!icon) return;

    const blob = new Blob([icon.svg], { type: 'image/svg+xml;charset=utf-8' });
    const url = URL.createObjectURL(blob);
    const link = document.createElement('a');
    link.href = url;
    link.download = icon.filename;
    document.body.appendChild(link);
    link.click();
    document.body.removeChild(link);
    URL.revokeObjectURL(url);

    showToast(`Download de "${icon.filename}" concluído!`);
  });

  // Copy Enum Button
  copyEnumBtn.addEventListener('click', () => {
    const icon = filteredIcons[activeIconIndex];
    if (!icon) return;
    copyToClipboard(`CadIcon.${icon.enumName}`, 'Enum copiado!');
  });

  // Copy Code Buttons inside tabs
  document.querySelectorAll('.copy-code-btn').forEach(btn => {
    btn.addEventListener('click', () => {
      const targetId = btn.dataset.target;
      const codeEl = document.getElementById(targetId);
      if (codeEl) {
        copyToClipboard(codeEl.textContent, 'Código Flutter copiado com sucesso!');
      }
    });
  });

  // ============================================================
  // Flutter Guide Modal
  // ============================================================
  openGuideBtn.addEventListener('click', () => {
    guideModal.classList.remove('hidden');
    document.body.style.overflow = 'hidden';
  });

  guideCloseBtn.addEventListener('click', closeModals);
  guideBackdrop.addEventListener('click', closeModals);

  // ============================================================
  // Clipboard & Toast System
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
    } catch (err) {
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
    }, 2800);
  }
});
