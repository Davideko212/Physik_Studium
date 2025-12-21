<script setup lang="ts">
import { onMounted, ref } from "vue";
import * as webcola from "webcola";
import * as d3 from "d3";
import { json } from "d3-fetch";

const container = ref<HTMLDivElement | null>(null);

onMounted(async () => {
  const width = 960;
  const height = 500;

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

  const graph: any = await json("smallgrouped.json");

  graph.nodes.forEach((n: any) => {
    n.width = n.height = 95;
  });

  graph.groups?.forEach((g: any) => {
    g.padding = 10;
  });

  cola
    .nodes(graph.nodes)
    .links(graph.links)
    .groups(graph.groups)
    .start(100, 0, 50, 50);

  const link = svg
    .selectAll(".link")
    .data(graph.links)
    .enter()
    .append("line")
    .attr("class", "link");

  const node = svg
    .selectAll(".node")
    .data(graph.nodes)
    .enter()
    .append("rect")
    .attr("class", "node")
    .attr("rx", 5)
    .attr("ry", 5)
    .style("fill", () => color("node"))
    .call(cola.drag);

  const label = svg
    .selectAll(".label")
    .data(graph.nodes)
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

    node
      .attr("x", (d: any) => d.x - d.width / 2)
      .attr("y", (d: any) => d.y - d.height / 2)
      .attr("width", (d: any) => d.width)
      .attr("height", (d: any) => d.height);

    label
      .attr("x", (d: any) => d.x)
      .attr("y", (d: any) => d.y + 4);
  });
});
</script>

<template>
  <p>bruh</p>
  <div ref="container" class="graph-container"></div>
</template>

<style>

html {
  min-width: 1040px;
}

body {
  font-family: "Helvetica Neue", Helvetica, sans-serif;
  margin: 1em auto 4em auto;
  width: 960px;
}

#body {
  position: relative;
}

h1 {
  font-size: 64px;
  font-weight: 300;
  letter-spacing: -2px;
  margin: .3em 0 .1em 0;
}

h2 {
  margin-top: 2em;
}

h1, h2 {
  text-rendering: optimizeLegibility;
}

h2 a {
  color: #ccc;
  left: -20px;
  position: absolute;
  width: 740px;
}

footer {
  font-size: small;
  margin-top: 8em;
}

header aside {
  margin-top: 82px;
}

header aside,
footer aside {
  color: #636363;
  text-align: right;
}

aside {
  font-size: small;
  left: 780px;
  position: absolute;
  width: 180px;
}

.attribution {
  font-size: small;
  margin-bottom: 2em;
}

#body > p, li > p {
  line-height: 1.5em;
}

#body > p {
  width: 720px;
}

#body > blockquote {
  width: 640px;
}

li {
  width: 680px;
}

a {
  color: steelblue;
}

a:not(:hover) {
  text-decoration: none;
}

pre, code, textarea {
  font-family: "Menlo", monospace;
}

code {
  line-height: 1em;
}

textarea {
  font-size: 100%;
}

#body > pre {
  border-left: solid 2px #ccc;
  padding-left: 18px;
  margin: 2em 0 2em -20px;
}

.html .value,
.javascript .string,
.javascript .regexp {
  color: #756bb1;
}

.html .tag,
.css .tag,
.javascript .keyword {
  color: #3182bd;
}

.comment {
  color: #636363;
}

.html .doctype,
.javascript .number {
  color: #31a354;
}

.html .attribute,
.css .attribute,
.javascript .class,
.javascript .special {
  color: #e6550d;
}

svg {
  font: 10px sans-serif;
}

.axis path, .axis line {
  fill: none;
  stroke: #000;
  shape-rendering: crispEdges;
}

sup, sub {
  line-height: 0;
}

q:before,
blockquote:before {
  content: "â";
}

q:after,
blockquote:after {
  content: "â";
}

blockquote:before {
  position: absolute;
  left: 2em;
}

blockquote:after {
  position: absolute;
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
  font-family: Verdana;
  font-size: 25px;
  text-anchor: middle;
  cursor: move;
}
</style>
