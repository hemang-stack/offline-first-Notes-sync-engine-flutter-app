import "dotenv/config";
import express from "express";
import authRouter from "./routes/auth.js"

const app = express();

app.use(express.json());
app.use("/auth", authRouter);

app.get("/", (req, res) =>{
    res.send("Welcome to the app!!!");
});

app.listen(8000, () => {
    console.log('Server started at port 8000!!');
});