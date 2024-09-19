import { Elysia } from "elysia";

const app = new Elysia();

app.get("/", function () {
  return "Hello Elysia";
});

app.get("/hello", function () {
  return "Hello";
});

app.get("/world", function () {
  return "World";
});

app.get("/hello/:name", function ({ params }) {
  return `Hello ${params.name}`;
});

app.listen(3000);

console.log(
  `🦊 Elysia is running at ${app.server?.hostname}:${app.server?.port}`
);
