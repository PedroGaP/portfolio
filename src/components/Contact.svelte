<script>
  import { onMount } from 'svelte';
  import Icon from '@iconify/svelte';
  
  let visible = false;
  onMount(() => {
    visible = true;
  });

  const contactMethods = [
    {
      icon: 'carbon:email',
      title: 'Email',
      value: 'jaennova@outlook.com',
      link: 'mailto:jaennova@outlook.com'
    },
    {
      icon: 'simple-icons:github',
      title: 'GitHub',
      value: '@jaennova',
      link: 'https://github.com/jaennova'
    },
    {
      icon: 'simple-icons:linkedin',
      title: 'LinkedIn',
      value: '@jaennova',
      link: 'https://linkedin.com/in/jaennova'
    }
  ];
</script>

<section id="contact" class="py-20">
  <div class="max-w-4xl mx-auto px-4 {visible ? 'opacity-100' : 'opacity-0'} transition-opacity duration-1000">
    <h2 class="text-3xl font-bold mb-12 text-center">Contacto</h2>

    <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
      {#each contactMethods as method}
        <a
          href={method.link}
          target="_blank"
          rel="noopener noreferrer"
          class="bg-white dark:bg-gray-900 p-6 rounded-lg shadow-lg hover:shadow-xl transition-all transform hover:-translate-y-1 duration-300 group"
        >
          <div class="flex flex-col items-center text-center">
            <div class="w-12 h-12 mb-4 rounded-lg bg-android-light/10 dark:bg-python-light/10 flex items-center justify-center group-hover:bg-android-light/20 dark:group-hover:bg-python-light/20 transition-colors">
              <Icon 
                icon={method.icon} 
                class="w-6 h-6 text-android-light dark:text-python-light"
              />
            </div>
            <h3 class="text-lg font-semibold mb-2">{method.title}</h3>
            <p class="text-gray-600 dark:text-gray-400">{method.value}</p>
          </div>
        </a>
      {/each}
    </div>
  </div>
</section>