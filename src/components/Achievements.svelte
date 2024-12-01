<script>
  import { onMount } from 'svelte';
  import Icon from '@iconify/svelte';
  
  let visible = false;
  onMount(() => {
    visible = true;
  });

  const achievements = [
    {
      icon: 'carbon:application-mobile',
      title: 'Aplicaciones Móviles',
      value: '10+',
      description: 'Apps publicadas en Play Store'
    },
    {
      icon: 'carbon:user-multiple',
      title: 'Usuarios Activos',
      value: '100K+',
      description: 'Usuarios mensuales'
    },
    {
      icon: 'carbon:code',
      title: 'Contribuciones',
      value: '500+',
      description: 'Commits en GitHub'
    },
    {
      icon: 'carbon:certificate',
      title: 'Certificaciones',
      value: '5+',
      description: 'Certificaciones técnicas'
    }
  ];
</script>

<section class="py-16 bg-gray-50 dark:bg-gray-800">
  <div class="max-w-6xl mx-auto px-4 {visible ? 'opacity-100' : 'opacity-0'} transition-opacity duration-1000">
    <h2 class="text-3xl font-bold mb-12 text-center">Logros</h2>

    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6">
      {#each achievements as achievement}
        <div class="bg-white dark:bg-gray-900 p-6 rounded-lg shadow-sm hover:shadow-md transition-all text-center">
          <Icon icon={achievement.icon} class="w-12 h-12 mx-auto mb-4 text-android-light dark:text-python-light" />
          <h3 class="text-2xl font-bold mb-2">{achievement.value}</h3>
          <p class="font-medium mb-2">{achievement.title}</p>
          <p class="text-sm text-gray-600 dark:text-gray-400">{achievement.description}</p>
        </div>
      {/each}
    </div>
  </div>
</section>