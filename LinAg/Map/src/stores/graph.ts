import { defineStore } from "pinia";
import { ref } from "vue";
import { json } from "d3-fetch";
import axios from "axios";

type NodeGraph = {
  nodes: string[],
  links: string[],
  groups: string[],
}

export const useGraphStore = defineStore("graph", () => {
  const loading = ref(true);

  const nodeGraph = ref<NodeGraph>({} as NodeGraph);

  async function loadNodeGraph() {
    loading.value = true;

    console.log(1)
    //const data: any = await json("smallgrouped.json");
    const { data } = await axios.get(
      "http://localhost:5173/smallgrouped.json"
    )
    console.log(2)

    nodeGraph.value.nodes = data.nodes;
    nodeGraph.value.links = data.links;
    nodeGraph.value.groups = data.groups;

    loading.value = false;
  }

  return { loading, nodeGraph, loadNodeGraph };
});
