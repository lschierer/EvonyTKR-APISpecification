import { Hono } from "hono";
import { logger } from "hono/logger";
import * as path from "path";
import { cors } from "hono/cors";
import { getRouterName, showRoutes } from "hono/dev";
import * as dotenvx from "@dotenvx/dotenvx";

dotenvx.config();

import { serve, type HttpBindings } from "@hono/node-server";

import { absolutePath } from "swagger-ui-dist";
import { serveStatic } from "@hono/node-server/serve-static";

const app = new Hono();
app.use(logger());

const pathToSwaggerUi = absolutePath();
const relativatePath = path.relative(process.cwd(), pathToSwaggerUi);

app
  .use(
    "/openapi.yaml",
    cors({
      origin: "http://localhost:4000",
      allowHeaders: ["X-Custom-Header", "Upgrade-Insecure-Requests"],
      allowMethods: ["POST", "GET", "OPTIONS"],
      exposeHeaders: ["Content-Length", "X-Kuma-Revision"],
      maxAge: 600,
      credentials: false,
    }),
  )
  .get("/openapi.yaml", serveStatic({ root: "./" }));

showRoutes(app, {
  verbose: true,
});

console.log(`pathToSwaggerUi contains ${relativatePath}`);

app.use("/*", serveStatic({ root: `${relativatePath}/` }));

export default serve({
  fetch: app.fetch,
  port: 4000,
});
