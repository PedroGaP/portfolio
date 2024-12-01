<script>
  import { onMount } from "svelte";
  import Icon from "@iconify/svelte";

  let visible = false;
  onMount(() => {
    visible = true;
  });

  const services = [
    {
      icon: "carbon:application-mobile",
      title: "Desarrollo Android",
      description:
        "Aplicaciones nativas de alta calidad con las últimas tecnologías y mejores prácticas.",
    },
    {
      icon: "carbon:api",
      title: "Backend Development",
      description:
        "APIs RESTful escalables y seguras utilizando Python con FastAPI.",
    },
    {
      icon: "carbon:cloud",
      title: "Cloud Services",
      description:
        "Implementación y gestión de servicios en la nube con AWS y Docker.",
    },
    {
      icon: "carbon:development",
      title: "Consultoría Técnica",
      description:
        "Asesoramiento en arquitectura de software y mejores prácticas de desarrollo.",
    },
  ];
</script>

<section id="services" class="py-4 bg-gray-50 dark:bg-gray-800 rounded-md">
  <div
    class="max-w-6xl mx-auto px-4 {visible
      ? 'opacity-100'
      : 'opacity-0'} transition-opacity duration-1000"
  >
    <h2 class="text-3xl font-bold mb-12 text-center">Servicios</h2>

    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-8">
      {#each services as service}
        <div
          class="bg-white dark:bg-gray-900 p-6 rounded-lg shadow-lg hover:shadow-xl transition-all transform hover:-translate-y-1 duration-300"
        >
          <div
            class="w-12 h-12 mb-6 rounded-lg bg-android-light/10 dark:bg-python-light/10 flex items-center justify-center"
          >
            <Icon
              icon={service.icon}
              class="w-6 h-6 text-android-light dark:text-python-light"
            />
          </div>
          <h3 class="text-xl font-semibold mb-4">{service.title}</h3>
          <p class="text-gray-600 dark:text-gray-400">{service.description}</p>
        </div>
      {/each}
    </div>
  </div>
  <div class="divisor rounded-md"></div>
  <style>
    .divisor {
      border-top: 28px solid #111827;
      margin: 1rem 0;
    }
  </style>
</section>
