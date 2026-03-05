# Hand Gesture Volume Control Using Python

## Overview

This project allows users to **control system volume using hand gestures**. It uses a webcam to detect hand landmarks and adjusts the volume based on the distance between the thumb and index finger.

The program uses **MediaPipe for hand tracking**, **OpenCV for video processing**, and **PyAutoGUI to control system volume**.

## Features

* Real-time hand tracking using webcam
* Detects thumb and index finger positions
* Controls system volume with hand gestures
* Visual feedback with hand landmarks and distance line

## Technologies Used

* Python
* OpenCV
* MediaPipe
* PyAutoGUI

## How It Works

1. The webcam captures video frames.
2. MediaPipe detects hand landmarks.
3. The program tracks:

   * Thumb tip
   * Index finger tip
4. The distance between them determines the volume action:

   * Large distance → Volume Up
   * Small distance → Volume Down

## Installation

Install the required libraries:

pip install opencv-python mediapipe pyautogui

## How to Run

Run the Python script:

python hand_volume_control.py

Press **ESC** to close the program.

## Project Structure

hand_volume_control.py → main program
README.md → project documentation

## Author

Riya Thakur
