<script>
  import { onMount } from "svelte";
  import Icon from "@iconify/svelte";
  import experience from "../data/experience.json";

  let visible = false;
  onMount(() => {
    visible = true;
  });
</script>

<section id="experience" class="py-20">
  <div
    class="max-w-5xl mx-auto px-4 {visible
      ? 'opacity-100'
      : 'opacity-0'} transition-opacity duration-1000"
  >
    <div class="text-center mb-16">
      <h2 class="text-3xl font-bold inline-flex items-center gap-3">
        <Icon
          icon="carbon:timeline"
          class="w-8 h-8 text-android-light dark:text-python-light"
        />
        <span
          class="bg-gradient-to-r from-android-light to-python-light bg-clip-text text-transparent"
        >
          Trayectoria Profesional
        </span>
      </h2>
    </div>

    <div class="relative">
      <div
        class="absolute left-8 top-0 bottom-0 w-[2px] bg-gradient-to-b from-android-light via-python-light to-android-light bg-[length:100%_200%] animate-gradient"
      ></div>

      <div class="space-y-12">
        <!-- Work Experience -->
        {#each experience.work as job}
          <div class="relative pl-24 group">
            <!-- Timeline connector -->
            <div
              class="absolute left-[31px] top-8 h-full w-8 border-t-2 border-android-light/20 dark:border-python-light/20 group-hover:border-android-light dark:group-hover:border-python-light transition-colors"
            ></div>

            <!-- Timeline icon -->
            <div
              class="absolute left-4 w-8 h-8 rounded-xl bg-white dark:bg-gray-900 shadow-lg flex items-center justify-center border-2 border-android-light dark:border-python-light transform group-hover:scale-110 transition-transform"
            >
              <Icon
                icon={job.icon}
                class="w-4 h-4 text-android-light dark:text-python-light"
              />
            </div>

            <div
              class="bg-white/30 dark:bg-gray-900/30 backdrop-blur-md rounded-2xl p-8 shadow-lg transition-all duration-300 group-hover:shadow-xl border border-gray-200/50 dark:border-gray-700/50 group-hover:border-android-light/50 dark:group-hover:border-python-light/50"
            >
              <div class="flex flex-col gap-4">
                <div class="flex items-center justify-between flex-wrap gap-4">
                  <h3
                    class="text-xl font-semibold text-android-light dark:text-python-light"
                  >
                    {job.position}
                  </h3>
                  <span
                    class="px-4 py-1 text-sm rounded-full bg-android-light/10 dark:bg-python-light/10 text-android-light dark:text-python-light font-medium"
                    >{job.type}</span
                  >
                </div>
                <p
                  class="text-sm text-gray-600 dark:text-gray-400 flex items-center gap-2"
                >
                  <Icon icon="carbon:enterprise" class="w-4 h-4" />
                  {job.company} • {job.period}
                </p>
                <div class="space-y-3">
                  {#each job.achievements as achievement}
                    <div class="flex items-start gap-3 text-sm group/item">
                      <span
                        class="w-5 h-5 rounded-full bg-android-light/10 dark:bg-python-light/10 flex items-center justify-center flex-shrink-0 mt-0.5 group-hover/item:bg-android-light/20 dark:group-hover/item:bg-python-light/20"
                      >
                        <Icon
                          icon="carbon:checkmark"
                          class="w-3 h-3 text-android-light dark:text-python-light"
                        />
                      </span>
                      <p class="text-gray-700 dark:text-gray-300">
                        {achievement}
                      </p>
                    </div>
                  {/each}
                </div>
              </div>
            </div>
          </div>
        {/each}

        <!-- Education -->
        {#each experience.education as edu}
          <div class="relative pl-24 group">
            <!-- Timeline connector -->
            <div
              class="absolute left-[31px] top-8 h-full w-8 border-t-2 border-android-light/20 dark:border-python-light/20 group-hover:border-android-light dark:group-hover:border-python-light transition-colors"
            ></div>

            <!-- Timeline icon -->
            <div
              class="absolute left-4 w-8 h-8 rounded-xl bg-white dark:bg-gray-900 shadow-lg flex items-center justify-center border-2 border-android-light dark:border-python-light transform group-hover:scale-110 transition-transform"
            >
              <Icon
                icon={edu.icon}
                class="w-4 h-4 text-android-light dark:text-python-light"
              />
            </div>

            <div
              class="bg-white/30 dark:bg-gray-900/30 backdrop-blur-md rounded-2xl p-8 shadow-lg transition-all duration-300 group-hover:shadow-xl border border-gray-200/50 dark:border-gray-700/50 group-hover:border-android-light/50 dark:group-hover:border-python-light/50"
            >
              {#if edu.degree}
                <div class="flex flex-col gap-4">
                  <h3
                    class="text-xl font-semibold text-android-light dark:text-python-light"
                  >
                    {edu.degree}
                  </h3>
                  <p
                    class="text-sm text-gray-600 dark:text-gray-400 flex items-center gap-2"
                  >
                    <Icon icon="carbon:university" class="w-4 h-4" />
                    {edu.institution} • {edu.period}
                  </p>
                  <p class="text-gray-700 dark:text-gray-300">
                    {edu.description}
                  </p>
                </div>
              {:else}
                <div class="flex flex-col gap-4">
                  <h3
                    class="text-xl font-semibold text-android-light dark:text-python-light"
                  >
                    {edu.certification}
                  </h3>
                  <p
                    class="text-sm text-gray-600 dark:text-gray-400 flex items-center gap-2"
                  >
                    <Icon icon="carbon:certificate" class="w-4 h-4" />
                    {edu.issuer} • {edu.year}
                  </p>
                  {#if edu.goals}
                    <div class="space-y-3">
                      {#each edu.goals as goal}
                        <div class="flex items-start gap-3 text-sm group/item">
                          <span
                            class="w-5 h-5 rounded-full bg-android-light/10 dark:bg-python-light/10 flex items-center justify-center flex-shrink-0 mt-0.5 group-hover/item:bg-android-light/20 dark:group-hover/item:bg-python-light/20"
                          >
                            <Icon
                              icon="carbon:checkmark"
                              class="w-3 h-3 text-android-light dark:text-python-light"
                            />
                          </span>
                          <p class="text-gray-700 dark:text-gray-300">{goal}</p>
                        </div>
                      {/each}
                    </div>
                  {/if}
                </div>
              {/if}
            </div>
          </div>
        {/each}
      </div>
    </div>
  </div>
</section>

<style>
  @keyframes gradient {
    0% {
      background-position: 0% 0%;
    }
    100% {
      background-position: 0% 100%;
    }
  }

  .animate-gradient {
    animation: gradient 3s linear infinite;
  }
</style>
