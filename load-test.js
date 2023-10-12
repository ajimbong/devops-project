import http from "k6/http";
import { sleep } from "k6";

export const options = {
  vus: 150,
  duration: "10m",
};

export default function () {
  http.get("https://backend.ajim.dev");
  sleep(1);
}
