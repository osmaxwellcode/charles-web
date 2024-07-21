<template>
  <global-footer class="footer custom-render">
    <template v-slot:copyright>
      Copyright &copy; 2024 charles-web<br/>
    </template>
  </global-footer>
</template>

<script>
import { GlobalFooter } from '@/components/ProLayout'

export default {
  name: 'ProGlobalFooter',
  components: {
    GlobalFooter
  }
}
</script>
