<script>
  import { onMount } from 'svelte';
  import Icon from '@iconify/svelte';
  
  let isMenuOpen = false;
  let isDark = false;
  let isScrolled = false;

  onMount(() => {
    isDark = document.documentElement.classList.contains('dark');
    
    if (localStorage.theme === 'dark' || (!('theme' in localStorage) && window.matchMedia('(prefers-color-scheme: dark)').matches)) {
      document.documentElement.classList.add('dark');
      isDark = true;
    }

    window.addEventListener('scroll', () => {
      isScrolled = window.scrollY > 20;
    });
  });

  function toggleTheme() {
    isDark = !isDark;
    if (isDark) {
      document.documentElement.classList.add('dark');
      localStorage.theme = 'dark';
    } else {
      document.documentElement.classList.remove('dark');
      localStorage.theme = 'light';
    }
  }

  const navItems = [
    { href: '#home', text: 'Inicio', icon: 'carbon:home' },
    { href: '#about', text: 'Sobre Mí', icon: 'carbon:user' },
    { href: '#projects', text: 'Proyectos', icon: 'carbon:portfolio' },
    { href: '#experience', text: 'Educación', icon: 'carbon:education' },
    { href: '#contact', text: 'Contacto', icon: 'carbon:email' }
  ];
</script>

<nav class="fixed w-full backdrop-blur-sm z-50 transition-all duration-300 {isScrolled ? 'bg-white/80 dark:bg-gray-900/80 shadow-lg' : 'bg-transparent'}">
  <div class="max-w-6xl mx-auto px-4">
    <div class="flex justify-between items-center h-16">
      <a href="#home">
        <div class="w-10 h-10">
          <img
            src="profile.png"
            alt="Jaen Nova"
            class="w-full h-full object-cover rounded-full border-2 border-android-light dark:border-python-light"
          />
        </div>
      </a>

      <!-- Desktop Menu -->
      <div class="hidden md:flex items-center space-x-8">
        {#each navItems as item}
          <a
            href={item.href}
            class="flex items-center gap-2 text-gray-700 dark:text-gray-300 hover:text-android-light dark:hover:text-android-light transition-colors"
          >
            <Icon icon={item.icon} class="w-4 h-4" />
            {item.text}
          </a>
        {/each}
      </div>

      <!-- Mobile Menu Button -->
      <button
        class="md:hidden"
        on:click={() => isMenuOpen = !isMenuOpen}
        aria-label="Toggle menu"
      >
        <Icon 
          icon={isMenuOpen ? "carbon:close" : "carbon:menu"} 
          class="w-6 h-6"
        />
      </button>
    </div>

    <!-- Mobile Menu -->
    {#if isMenuOpen}
      <div class="md:hidden py-4 space-y-4">
        {#each navItems as item}
          <a
            href={item.href}
            class="flex items-center gap-3 px-4 py-2 text-gray-700 dark:text-gray-300 hover:text-android-light dark:hover:text-android-light transition-colors"
            on:click={() => isMenuOpen = false}
          >
            <Icon icon={item.icon} class="w-5 h-5" />
            {item.text}
          </a>
        {/each}
      </div>
    {/if}
  </div>
</nav>

<!-- Theme Toggle (Mobile) -->
{#if !isMenuOpen}
  <div class="md:hidden fixed bottom-4 right-4 z-50">
    <button
      on:click={toggleTheme}
      class="p-3 rounded-lg bg-gray-100/80 dark:bg-gray-800/80 backdrop-blur-sm hover:bg-gray-200 dark:hover:bg-gray-700 transition-colors shadow-lg border border-gray-200 dark:border-gray-700"
      aria-label="Toggle theme"
    >
      {#if isDark}
        <Icon icon="carbon:sun" class="w-5 h-5" />
      {:else}
        <Icon icon="carbon:moon" class="w-5 h-5" />
      {/if}
    </button>
  </div>
{/if}

<!-- Theme Toggle (Desktop) -->
<div class="hidden md:block fixed top-4 right-4 z-50">
  <button
    on:click={toggleTheme}
    class="p-2 rounded-lg bg-gray-100/80 dark:bg-gray-800/80 backdrop-blur-sm hover:bg-gray-200 dark:hover:bg-gray-700 transition-colors shadow-lg border border-gray-200 dark:border-gray-700"
    aria-label="Toggle theme"
  >
    {#if isDark}
      <Icon icon="carbon:sun" class="w-4 h-4" />
    {:else}
      <Icon icon="carbon:moon" class="w-4 h-4" />
    {/if}
  </button>
</div>