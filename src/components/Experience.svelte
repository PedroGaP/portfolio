<script>
  import { onMount } from 'svelte';
  import Icon from '@iconify/svelte';
  import experience from '../data/experience.json';
  
  let visible = false;
  onMount(() => {
    visible = true;
  });
</script>

<section id="experience" class="py-20">
  <div class="max-w-6xl mx-auto px-4 {visible ? 'opacity-100' : 'opacity-0'} transition-opacity duration-1000">
    <h2 class="text-3xl font-bold mb-12 text-center">Educación</h2>

    <div class="grid grid-cols-1 gap-12">
      <div class="space-y-8">
        {#each experience.education as edu}
          <div class="bg-white/50 dark:bg-gray-900/50 backdrop-blur-sm p-8 rounded-xl shadow-lg hover:shadow-xl transition-all border border-gray-200 dark:border-gray-700">
            {#if edu.degree}
              <div class="flex items-center gap-4 mb-6">
                <div class="w-12 h-12 rounded-xl bg-android-light/10 dark:bg-python-light/10 flex items-center justify-center">
                  <Icon icon="carbon:education" class="w-6 h-6 text-android-light dark:text-python-light" />
                </div>
                <div>
                  <h3 class="text-xl font-semibold">{edu.degree}</h3>
                  <p class="text-gray-600 dark:text-gray-400">{edu.institution} | {edu.period}</p>
                </div>
              </div>
              <p class="text-gray-700 dark:text-gray-300 mb-4">{edu.description}</p>
            {:else}
              <div class="flex items-center gap-4 mb-6">
                <div class="w-12 h-12 rounded-xl bg-android-light/10 dark:bg-python-light/10 flex items-center justify-center">
                  <Icon icon="carbon:certificate" class="w-6 h-6 text-android-light dark:text-python-light" />
                </div>
                <div>
                  <h3 class="text-xl font-semibold">{edu.certification}</h3>
                  <p class="text-gray-600 dark:text-gray-400">{edu.issuer} | {edu.year}</p>
                </div>
              </div>
              {#if edu.goals}
                <div class="space-y-3">
                  {#each edu.goals as goal}
                    <div class="flex items-start gap-3">
                      <Icon 
                        icon="carbon:checkmark-outline" 
                        class="w-5 h-5 mt-1 text-android-light dark:text-python-light flex-shrink-0" 
                      />
                      <p class="text-gray-700 dark:text-gray-300">{goal}</p>
                    </div>
                  {/each}
                </div>
              {/if}
            {/if}
          </div>
        {/each}
      </div>
    </div>
  </div>
</section>