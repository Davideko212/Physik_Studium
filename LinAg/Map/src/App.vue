<script setup lang="ts">
import { json } from "d3-fetch";
import { onMounted, ref } from "vue";
import Graph from "@/components/Graph.vue";
import { useGraphStore } from "@/stores/graph.ts";

// type NodeGraph = {
//   nodes: string[],
//   links: string[],
//   groups: string[],
// }
//
// const graphStore = useGraphStore();
// const graph = ref<NodeGraph>({} as NodeGraph);
//
// onMounted(async () => {
//   await graphStore.loadNodeGraph();
//
//   graph.value.nodes = graphStore.nodeGraph.nodes
//   graph.value.links = graphStore.nodeGraph.links
//   graph.value.groups = graphStore.nodeGraph.groups
// });
</script>

<template>
  <p>bruh</p>
  <Graph />
</template>

<style>

</style>
