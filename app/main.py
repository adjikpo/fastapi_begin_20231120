from datetime import datetime
from fastapi import FastAPI

app = FastAPI()


@app.get("/")
def welcome():
    return {"Message": "Hello World"}

@app.get("/date")
def date():
    return {'Date': datetime.now()}