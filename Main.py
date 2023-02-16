from flask import Flask, render_template, Response  # this works

import cv2
import numpy as np

app = Flask(__name__)  # calling FastAPI class from fastapi

cap = cv2.VideoCapture(0)


def gen_frames():
    while True:
        