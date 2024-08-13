# Flask Application

This repository contains a simple Flask application that displays a message on the homepage. The purpose of this repository is to demonstrate the process of Dockerizing a Flask app and setting up a CI/CD pipeline using GitHub Actions.

## Getting Started

To get started with this project, you'll need to complete the following tasks:

1. **Write a Dockerfile**
   - Create a `Dockerfile` to containerize the Flask application.
   - The Dockerfile should include all the necessary steps to build and run the application in a Docker container.

2. **Write a GitHub Action for Building the Application**
   - Create a GitHub Action workflow that automates the build process of the Flask application.
   - The workflow should be triggered on each push to the repository and should include the following steps:
     - Build the Docker image.
 