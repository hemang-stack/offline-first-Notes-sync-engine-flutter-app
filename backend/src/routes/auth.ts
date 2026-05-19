import express from "express";
import type { Request, Response } from "express";
import { db } from "../db/index.js";
import { users, type NewUser } from "../db/schema.js";
import { eq } from "drizzle-orm";
import bcrypt from "bcryptjs";

const authRouter = express.Router();

interface SignUpBody {
    name: string;
    email: string;
    password: string;
}

authRouter.post(
    "/signup",
    async (req: Request<{}, {}, SignUpBody>, res: Response) => {
        try {
            // get req body
            const { name, email, password } = req.body;
            // check if user exists
            const existingUser = await db
                .select()
                .from(users)
                .where(eq(users.email, email));
            if (existingUser.length) {
                res
                    .status(400)
                    .json({ msg: "User with the same email already exists!" });
                return;
            };
            // hash password
            const hashedPassword = await bcrypt.hash(password, 8);
            // store in db
            const newUser: NewUser = {
                name,
                email,
                password: hashedPassword
            };

            const [user] = await db.insert(users).values(newUser).returning();
            res.status(201).json(user);
        } catch (e) {
            res.status(500).json({ error: e });
        };
    }
);

authRouter.get("/", (req, res) => {
    res.send("hey there, from auth!");
});

export default authRouter;