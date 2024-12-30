<script>
  import personalData from "../data/personal.json";
</script>

<footer class="bg-white dark:bg-gray-900 py-8 mt-20">
  <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
    <div class="text-center">
      <p class="text-gray-600 dark:text-gray-400">
        © {new Date().getFullYear()}
        {personalData.name}. Todos los derechos reservados.
      </p>
      <div class="mt-4 flex justify-center space-x-6">
        <a
          href={personalData.contact.github.link}
          target="_blank"
          rel="noopener noreferrer"
          class="text-gray-600 dark:text-gray-400 hover:text-android-light dark:hover:text-android-light"
        >
          {personalData.contact.github.title}
        </a>
        <a
          href={personalData.contact.linkedin.link}
          target="_blank"
          rel="noopener noreferrer"
          class="text-gray-600 dark:text-gray-400 hover:text-android-light dark:hover:text-android-light"
        >
          {personalData.contact.linkedin.title}
        </a>
        <a
          href="mailto:{personalData.contact.email}"
          class="text-gray-600 dark:text-gray-400 hover:text-android-light dark:hover:text-android-light"
        >
          Email
        </a>
      </div>
    </div>
  </div>
</footer>
