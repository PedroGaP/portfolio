<script>
  import { onMount } from 'svelte';
  import Icon from '@iconify/svelte';
  
  let visible = false;
  onMount(() => {
    visible = true;
  });

  const testimonials = [
    {
      name: "Carlos Rodríguez",
      role: "CTO, TechStart",
      content: "Jaen demostró un excelente dominio en el desarrollo Android. Su trabajo superó nuestras expectativas.",
      image: "/testimonials/person1.jpg"
    },
    {
      name: "María González",
      role: "Product Manager, InnovateSoft",
      content: "La implementación del backend fue impecable. Gran capacidad técnica y excelente comunicación.",
      image: "/testimonials/person2.jpg"
    },
    {
      name: "David Martínez",
      role: "CEO, AppDev Solutions",
      content: "Un desarrollador excepcional. Su experiencia en Android y backend fue fundamental para nuestro proyecto.",
      image: "/testimonials/person3.jpg"
    }
  ];
</script>

<section class="py-20">
  <div class="max-w-6xl mx-auto px-4 {visible ? 'opacity-100' : 'opacity-0'} transition-opacity duration-1000">
    <h2 class="text-3xl font-bold mb-12 text-center">Testimonios</h2>

    <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
      {#each testimonials as testimonial}
        <div class="bg-white dark:bg-gray-900 p-8 rounded-lg shadow-lg hover:shadow-xl transition-all transform hover:-translate-y-1 duration-300">
          <div class="flex flex-col h-full">
            <div class="mb-6">
              <Icon 
                icon="carbon:quotes" 
                class="w-8 h-8 text-android-light dark:text-python-light opacity-50"
              />
            </div>
            
            <p class="text-gray-600 dark:text-gray-400 mb-6 flex-grow">"{testimonial.content}"</p>
            
            <div class="flex items-center gap-4">
              <div class="w-12 h-12 rounded-full bg-gradient-to-r from-android-light to-python-light"></div>
              <div>
                <h4 class="font-semibold">{testimonial.name}</h4>
                <p class="text-sm text-gray-500 dark:text-gray-400">{testimonial.role}</p>
              </div>
            </div>
          </div>
        </div>
      {/each}
    </div>
  </div>
</section>