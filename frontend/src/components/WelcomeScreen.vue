<template>
  <div class="welcome">
    <div class="container">
      <div class="logo">
        🤖
      </div>
      <h1>Doppelkopf</h1>

      <button class="button start-game" v-on:click='game.start()'>
        Start Game!
      </button>
    </div>
  </div>
</template>

<script>
export default {
  name: "WelcomeScreen",
  props: {
    game: {
      type: Object,
      required: true
    }
  }
};
</script>

<style scoped>
@import "../assets/css/colors.css";

.welcome {
  display: flex;
  align-items: center;
  justify-content: center;
  height: 100%;
}

.logo {
  font-size: 5em;
  display: block;
}

.welcome h1 {
  font-size: 3em;
  color: var(--black);
  text-transform: uppercase;
  display: block;
}
</style>
