import express from 'express'

import { Router, Request, Response } from 'express';
import Person from './Controller/Person';
import dotenv from 'dotenv';
dotenv.config();
const PORT = 3000
const app = express();

const route = Router()

app.use(express.json())

route.get('/', Person.getName)

app.use(route)


app.listen(PORT, () => {
    console.log(`http://localhost:${PORT}/`)
})