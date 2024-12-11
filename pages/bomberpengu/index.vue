<script setup>
fetch('./game.txt')
  .then(res => res.text())
  .then(console.log)
</script>

<template>
  <div>Bomberpengu</div>
</template>
