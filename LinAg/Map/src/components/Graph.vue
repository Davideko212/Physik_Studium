<script setup lang="ts">
import { onMounted, ref, isProxy, toRaw } from "vue";
import * as webcola from "webcola";
import * as d3 from "d3";
import { useGraphStore } from "@/stores/graph.ts";

// const props = defineProps({
//   nodegraph: Object, // JSON
// })

const graphStore = useGraphStore();

const container = ref<HTMLDivElement | null>(null);

onMounted(async () => {
  await graphStore.loadNodeGraph();
  if (graphStore.loading) {
    return;
  }

  const width = window.innerWidth;
  const height = window.innerHeight;

  const color = d3.scaleOrdinal(d3.schemeCategory10);

  const cola = webcola
    .d3adaptor(d3)
    .linkDistance(80)
    .avoidOverlaps(true)
    .handleDisconnected(true)
    .size([width, height]);

  const svg = d3
    .select(container.value!)
    .append("svg")
    .attr("width", width)
    .attr("height", height);

  graphStore.nodeGraph.nodes.forEach((n: any) => {
    n.width = n.height = 95;
  });

  graphStore.nodeGraph.groups.forEach((g: any) => {
    g.padding = 10;
  });

  cola
    .nodes(graphStore.nodeGraph.nodes)
    .links(graphStore.nodeGraph.links)
    .groups(graphStore.nodeGraph.groups)
    .start(100, 0, 50, 50);

  const group = svg
    .selectAll(".group")
    .data(graphStore.nodeGraph.groups)
    .enter()
    .append("rect")
    .attr("rx", 8)
    .attr("ry", 8)
    .attr("class", "group")
    .style("fill", function (d,i) {return color(String(i))})

  const link = svg
    .selectAll(".link")
    .data(graphStore.nodeGraph.links)
    .enter()
    .append("line")
    .attr("class", "link");

  const node = svg
    .selectAll(".node")
    .data(graphStore.nodeGraph.nodes)
    .enter()
    .append("rect")
    .attr("class", "node")
    .attr("rx", 5)
    .attr("ry", 5)
    .style("fill", () => color("node"))
    .call(cola.drag);

  const label = svg
    .selectAll(".label")
    .data(graphStore.nodeGraph.nodes)
    .enter()
    .append("text")
    .attr("class", "label")
    .text((d: any) => d.name)
    .call(cola.drag);

  cola.on("tick", () => {
    link
      .attr("x1", (d: any) => d.source.x)
      .attr("y1", (d: any) => d.source.y)
      .attr("x2", (d: any) => d.target.x)
      .attr("y2", (d: any) => d.target.y);

    node.each(clampNodes);
    node
      .attr("x", (d: any) => d.x - d.width / 2)
      .attr("y", (d: any) => d.y - d.height / 2)
      .attr("width", (d: any) => d.width)
      .attr("height", (d: any) => d.height);

    group
      .attr("x", (d: any) => d.bounds.x)
      .attr("y", (d: any) => d.bounds.y)
      .attr("width", (d: any) => d.bounds.width())
      .attr("height", (d: any) => d.bounds.height())

    label
      .attr("x", (d: any) => d.x)
      .attr("y", (d: any) => d.y + 4);
  });
});

function clampNodes(d: any) {
  const halfW = d.width / 2;
  const halfH = d.height / 2;

  d.x = Math.max(halfW, Math.min(window.innerWidth - halfW, d.x));
  d.y = Math.max(halfH, Math.min(window.innerHeight - halfH, d.y));
}
</script>

<template>
  <div ref="container" class="graph-container"></div>
</template>

<style>
svg {
  font: 10px sans-serif;
}

.axis path, .axis line {
  fill: none;
  stroke: #000;
  shape-rendering: crispEdges;
}

.node {
  stroke: #fff;
  stroke-width: 1.5px;
  cursor: move;
}

.group {
  stroke: #fff;
  stroke-width: 1.5px;
  cursor: move;
  opacity: 0.7;
}

.link {
  stroke: #7a4e4e;
  stroke-width: 3px;
  stroke-opacity: 1;
}

.label {
  fill: white;
  font-family: Verdana, serif;
  font-size: 25px;
  text-anchor: middle;
  cursor: move;
}
</style>
