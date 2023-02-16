import cv2
import numpy as np
import argparse
import colorsys


def getImageArray(respectiveArray, editablePhoto, rowx, coly):
    for i in range(0, rowx):
        for j in range(0, coly):
            currMatrix = np.array((0, 0, 0), dtype=float)
            for k in range(0, 3):
                currMatrix[k] = editablePhoto[i, j, k]
            lmsImage = np.dot(respectiveArray, currMatrix)
            for k in range(0, 3):
                editablePhoto[i, j, k] = lmsImage[k]
    return editablePhoto


def tolms(frame, rowx, coly):

    photo = cv2.imread(frame)
    editablePhoto = np.zeros((rowx, coly, 3), "float")

    for i in range(0, rowx):
        for j in range(0, coly):
            for k in range(0, 3):
                editablePhoto[i, j, k] = photo[i, j][k]
                editablePhoto[i, j, k] = (editablePhoto[i, j, k]) / 255
    lmsConvert = np.arraynp.array(
        (
            [
                [17.8824, 43.5161, 4.11935],
                [3.45565, 27.1554, 3.86714],
                [0.0299566, 0.184309, 1.46709],
            ]
        )
    )
    editablePhoto = getImageArray(lmsConvert, editablePhoto, rowx, coly)
    NormalPhoto = normalise(editablePhoto, rowx, coly)
    return NormalPhoto


def convertToRGB(editablePhoto, rowx, coly):
    rgb2lms = np.array(
        [
            [17.8824, 43.5161, 4.11935],
            [3.45565, 27.1554, 3.86714],
            [0.0299566, 0.184309, 1.46709],
        ]
    )
    RGBConvert = np.linalg.inv(rgb2lms)
    # print(RGBConvert)
    editablePhoto = getImageArray(RGBConvert, editablePhoto, rowx, coly)
    for i in range(0, rowx):
        for j in range(0, coly):
            for k in range(0, 3):
                editablePhoto[i, j, k] = ((editablePhoto[i, j, k])) * 255

    NormalPhoto = normalise(editablePhoto, rowx, coly)
    return NormalPhoto


def normalise(editablePhoto, rowx, coly):
    NormalPhoto = np.zeros((rowx, coly, 3), "float")
    x = rowx - 1
    y = coly
    for i in range(0, rowx):
        for j in range(0, coly):
            for k in range(0, 3):
                NormalPhoto[x, j, k] = editablePhoto[i, j, k]
        x = x - 1

    return NormalPhoto


# Simulating for protanopes
def ConvertToProtanopes(editablePhoto, rowx, coly):
    protanopeConvert = np.array(
        [[0, 2.02344, -2.52581], [0, 1, 0], [0, 0, 1]]
    )  # correction filter array for protonopia
    editablePhoto = getImageArray(protanopeConvert, editablePhoto, rowx, coly)
    NormalPhoto = normalise(editablePhoto, rowx, coly)
    return NormalPhoto


# Simulating Deutranopia
def ConvertToDeuteranopes(editablePhoto, rowx, coly):
    DeuteranopesConvert = np.array(
        [[1, 0, 0], [0.494207, 0, 1.24827], [0, 0, 1]]
    )  # correction filter array for deutranopia
    editablePhoto = getImageArray(DeuteranopesConvert, editablePhoto, rowx, coly)
    NormalPhoto = normalise(editablePhoto, rowx, coly)
    return NormalPhoto


# Simulating Tritanopia
def ConvertToTritanope(editablePhoto, rowx, coly):
    TritanopeConvert = np.array(
        [[1, 0, 0], [0, 1, 0], [-0.395913, 0.801109, 0]]
    )  # correction filter array for tritanopia
    editablePhoto = getImageArray(TritanopeConvert, editablePhoto, rowx, coly)
    NormalPhoto = normalise(editablePhoto, rowx, coly)
    return NormalPhoto

