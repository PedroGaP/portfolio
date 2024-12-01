<script>
  import { onMount } from 'svelte';
  import Icon from '@iconify/svelte';
  
  let visible = false;
  onMount(() => {
    visible = true;
  });

  const skills = [
    { name: 'Android', icon: 'simple-icons:android' },
    { name: 'Kotlin', icon: 'simple-icons:kotlin' },
    { name: 'Python', icon: 'simple-icons:python' },
    { name: 'FastAPI', icon: 'simple-icons:fastapi' },
    { name: 'PostgreSQL', icon: 'simple-icons:postgresql' },
    { name: 'MongoDB', icon: 'simple-icons:mongodb' },
    { name: 'Docker', icon: 'simple-icons:docker' },
    { name: 'Git', icon: 'simple-icons:git' },
    { name: 'AWS', icon: 'simple-icons:amazonaws' },
    { name: 'Linux', icon: 'simple-icons:linux' }
  ];

  const categories = [
    {
      title: 'Desarrollo Móvil',
      icon: 'carbon:application-mobile',
      skills: ['Android', 'Kotlin', 'Jetpack Compose']
    },
    {
      title: 'Backend',
      icon: 'carbon:server',
      skills: ['Python', 'FastAPI', 'PostgreSQL', 'MongoDB']
    },
    {
      title: 'DevOps',
      icon: 'carbon:cloud',
      skills: ['Docker', 'Git', 'AWS', 'Linux']
    }
  ];
</script>

<section id="skills" class="py-20">
  <div class="max-w-6xl mx-auto px-4 {visible ? 'opacity-100' : 'opacity-0'} transition-opacity duration-1000">
    <h2 class="text-3xl font-bold mb-12 text-center">Habilidades</h2>

    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
      {#each categories as category}
        <div class="bg-white/50 dark:bg-gray-900/50 backdrop-blur-sm p-6 rounded-lg shadow-lg hover:shadow-xl transition-all border border-gray-200 dark:border-gray-700">
          <div class="flex items-center gap-3 mb-6">
            <div class="w-12 h-12 rounded-lg bg-android-light/10 dark:bg-python-light/10 flex items-center justify-center">
              <Icon 
                icon={category.icon} 
                class="w-6 h-6 text-android-light dark:text-python-light"
              />
            </div>
            <h3 class="text-xl font-semibold">{category.title}</h3>
          </div>

          <div class="flex flex-wrap gap-3">
            {#each category.skills as skillName}
              {#if skills.find(s => s.name === skillName)}
                {@const skill = skills.find(s => s.name === skillName)}
                <div class="flex items-center gap-2 px-3 py-1.5 bg-gray-100 dark:bg-gray-800 rounded-full hover:bg-android-light/10 dark:hover:bg-python-light/10 transition-colors">
                  <Icon 
                    icon={skill.icon}
                    class="w-4 h-4 text-android-light dark:text-python-light" 
                  />
                  <span class="text-sm font-medium">{skill.name}</span>
                </div>
              {/if}
            {/each}
          </div>
        </div>
      {/each}
    </div>
  </div>
</section>