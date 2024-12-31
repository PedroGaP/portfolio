<script>
  import { onMount } from "svelte";
  import Icon from "@iconify/svelte";
  import projectsData from "../data/projects.json";

  let visible = false;
  let selectedTech = "Todos";
  let projects = projectsData.projects;
  let filteredProjects = projects;

  onMount(() => {
    visible = true;
  });

  const techIcons = {
    Todos: "carbon:search",
    Android: "simple-icons:android",
    Kotlin: "simple-icons:kotlin",
    JetpackCompose: "simple-icons:jetpackcompose",
    Python: "simple-icons:python",
    FastAPI: "simple-icons:fastapi",
    PostgreSQL: "simple-icons:postgresql",
    Docker: "simple-icons:docker",
    Room: "simple-icons:databricks",
    Astro: "simple-icons:astro",
    Svelte: "simple-icons:svelte",
    Tailwind: "simple-icons:tailwindcss",
  };

  $: technologies = [
    "Todos",
    ...new Set(projects.flatMap((p) => p.technologies)),
  ];

  $: filteredProjects =
    selectedTech === "Todos"
      ? projects
      : projects.filter((p) => p.technologies.includes(selectedTech));

  function filterProjects(tech) {
    selectedTech = tech;
  }
</script>

<section id="projects" class="py-16">
  <div
    class="max-w-6xl mx-auto px-4 {visible
      ? 'opacity-100'
      : 'opacity-0'} transition-opacity duration-1000"
  >
    <h2 class="text-3xl font-bold mb-8 text-center">Proyectos</h2>
    <div class="flex flex-wrap justify-center gap-3 mb-8">
      {#each technologies as tech}
        <button
          class="flex items-center gap-2 px-4 py-2 rounded-full text-sm font-medium transition-colors
            {selectedTech === tech
            ? 'bg-android-light dark:bg-python-light text-white'
            : 'bg-white dark:bg-gray-900 text-gray-700 dark:text-gray-300 hover:bg-gray-100 dark:hover:bg-gray-800'}"
          on:click={() => filterProjects(tech)}
        >
          <Icon icon={techIcons[tech]} class="w-5 h-5" />
          {tech}
        </button>
      {/each}
    </div>

    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
      {#each filteredProjects as project}
        <div
          class="bg-white dark:bg-gray-900 rounded-lg shadow-lg overflow-hidden hover:shadow-xl transition-shadow transform hover:-translate-y-1 duration-300"
        >
          <div class="aspect-video bg-gray-100 dark:bg-gray-800">
            {#if project.image}
              <img
                src={project.image}
                alt={project.title}
                class="w-full h-full object-cover"
              />
            {/if}
          </div>

          <div class="p-6">
            <h3 class="text-xl font-semibold mb-2">{project.title}</h3>
            <p class="text-gray-600 dark:text-gray-400 mb-4 text-sm">
              {project.description}
            </p>

            <div class="flex flex-wrap gap-2 mb-4">
              {#each project.technologies as tech}
                <span
                  class="flex items-center gap-1 px-3 py-1 text-sm bg-gray-100 dark:bg-gray-800 rounded-full"
                >
                  <Icon
                    icon={techIcons[tech]}
                    class="w-4 h-4 text-android-light dark:text-python-light"
                  />
                  {tech}
                </span>
              {/each}
            </div>

            <div class="flex gap-4">
              {#if project.github}
                <a
                  href={project.github}
                  target="_blank"
                  rel="noopener noreferrer"
                  class="flex items-center gap-2 text-sm text-gray-600 dark:text-gray-400 hover:text-android-light dark:hover:text-android-light transition-colors"
                >
                  <Icon icon="simple-icons:github" class="w-5 h-5" />
                  Código
                </a>
              {/if}
              {#if project.live}
                <a
                  href={project.live}
                  target="_blank"
                  rel="noopener noreferrer"
                  class="flex items-center gap-2 text-sm text-gray-600 dark:text-gray-400 hover:text-android-light dark:hover:text-android-light transition-colors"
                >
                  <Icon icon="carbon:launch" class="w-5 h-5" />
                  Demo
                </a>
              {/if}
            </div>
          </div>
        </div>
      {/each}
    </div>
  </div>
</section>
