<script>
  import { onMount } from "svelte";
  import Icon from "@iconify/svelte";

  let visible = false;
  onMount(() => {
    visible = true;
  });

  const timeline = [
    {
      year: "2023",
      title: "Senior Android Developer",
      description:
        "Liderando el desarrollo de aplicaciones móviles con más de 1M de descargas",
      icon: "carbon:application-mobile",
    },
    {
      year: "2022",
      title: "Certificación Google Associate Android Developer",
      description: "Validación oficial de habilidades en desarrollo Android",
      icon: "carbon:certificate",
    },
    {
      year: "2021",
      title: "Backend Lead Developer",
      description:
        "Arquitectura y desarrollo de servicios escalables en Python",
      icon: "carbon:server",
    },
    {
      year: "2020",
      title: "Primer App en Play Store",
      description: "Lanzamiento exitoso de aplicación con +50K descargas",
      icon: "carbon:rocket",
    },
    {
      year: "2021",
      title: "Inicio en Desarrollo Móvil",
      description: "Primeros pasos en el desarrollo de aplicaciones Android",
      icon: "carbon:code",
    },
  ];
</script>

<section class="py-4">
  <div
    class="max-w-4xl mx-auto px-4 {visible
      ? 'opacity-100'
      : 'opacity-0'} transition-opacity duration-1000"
  >
    <h2 class="text-3xl font-bold mb-12 text-center">Mi Trayectoria</h2>

    <div class="relative">
      <!-- Line -->
      <div
        class="absolute left-1/2 transform -translate-x-1/2 h-full w-0.5 bg-android-light dark:bg-python-light opacity-30"
      ></div>

      <div class="space-y-12">
        {#each timeline as item, i}
          <div class="relative flex items-center justify-center">
            <div
              class="flex items-center w-full {i % 2 === 0
                ? 'flex-row-reverse'
                : ''}"
            >
              <!-- Content -->
              <div class="w-5/12">
                <div
                  class="bg-white dark:bg-gray-900 p-6 rounded-lg shadow-sm hover:shadow-md transition-all"
                >
                  <div class="flex items-center gap-3 mb-2">
                    <Icon
                      icon={item.icon}
                      class="w-6 h-6 text-android-light dark:text-python-light"
                    />
                    <span class="font-bold">{item.year}</span>
                  </div>
                  <h3 class="text-lg font-semibold mb-2">{item.title}</h3>
                  <p class="text-gray-600 dark:text-gray-400 text-sm">
                    {item.description}
                  </p>
                </div>
              </div>

              <!-- Circle -->
              <div
                class="absolute left-1/2 transform -translate-x-1/2 w-4 h-4 rounded-full bg-android-light dark:bg-python-light"
              ></div>
            </div>
          </div>
        {/each}
      </div>
    </div>
  </div>
</section>
