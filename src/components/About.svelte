<script>
  import { onMount } from 'svelte';
  import Icon from '@iconify/svelte';
  
  let visible = false;
  onMount(() => {
    visible = true;
  });

  const hardSkills = [
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

  const softSkills = [
    'Resolución de problemas',
    'Trabajo en equipo',
    'Comunicación efectiva',
    'Aprendizaje continuo',
    'Adaptabilidad'
  ];
</script>

<section id="about" class="py-20">
  <div class="max-w-4xl mx-auto px-4 {visible ? 'opacity-100' : 'opacity-0'} transition-opacity duration-1000">
    <div class="flex items-center gap-3 mb-8 justify-center">
      <Icon icon="carbon:user-profile" class="w-8 h-8 text-android-light dark:text-python-light" />
      <h2 class="text-3xl font-bold">Sobre Mí</h2>
    </div>
    
    <div class="prose dark:prose-invert max-w-none mb-12">
      <p class="text-lg text-gray-700 dark:text-gray-300 text-center">
        Soy un desarrollador enfocado en desarrollo Android y backend. Con experiencia en el desarrollo
        de aplicaciones móviles y servicios backend escalables, me esfuerzo por crear soluciones eficientes y amigables
        que marquen la diferencia.
      </p>
      
      <div class="flex justify-center mt-8">
        <a
          href="/cv.pdf"
          class="flex items-center gap-2 px-6 py-3 rounded-lg bg-gray-100 dark:bg-gray-800 text-gray-900 dark:text-white hover:bg-gray-200 dark:hover:bg-gray-700 transition-all duration-300 hover:scale-105"
        >
          <Icon icon="carbon:document-download" class="w-5 h-5" />
          Descargar CV
        </a>
      </div>
    </div>

    <div class="space-y-8">
      <div>
        <h3 class="text-xl font-semibold mb-4 flex items-center gap-2">
          <Icon icon="carbon:tool-kit" class="w-5 h-5 text-android-light dark:text-python-light" />
          Habilidades Técnicas
        </h3>
        <div class="flex flex-wrap gap-3">
          {#each hardSkills as skill}
            <div class="flex items-center gap-2 px-3 py-1.5 bg-gray-100 dark:bg-gray-800 rounded-full">
              <Icon 
                icon={skill.icon}
                class="w-4 h-4 text-android-light dark:text-python-light" 
              />
              <span class="text-sm font-medium">{skill.name}</span>
            </div>
          {/each}
        </div>
      </div>

      <div>
        <h3 class="text-xl font-semibold mb-4 flex items-center gap-2">
          <Icon icon="carbon:user-profile" class="w-5 h-5 text-android-light dark:text-python-light" />
          Habilidades Blandas
        </h3>
        <div class="flex flex-wrap gap-3">
          {#each softSkills as skill}
            <div class="flex items-center gap-2 px-3 py-1.5 bg-gray-100 dark:bg-gray-800 rounded-full">
              <Icon 
                icon="carbon:checkmark"
                class="w-4 h-4 text-android-light dark:text-python-light" 
              />
              <span class="text-sm font-medium">{skill}</span>
            </div>
          {/each}
        </div>
      </div>
    </div>
  </div>
</section>