import { pgTable, uuid} from "drizzle-orm/pg-core";

pgTable("users", {
    id: uuid("id").primaryKey()
})