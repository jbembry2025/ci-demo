pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/jbembry2025/ci-demo.git'
            }
        }

        stage('Build') {
            steps {
                sh '''
                    echo "Building the project..."
                    ls -l
                '''
            }
        }

        stage('Test') {
            steps {
                sh '''
                    chmod +x test.sh
                    ./test.sh
                '''
            }
        }

        stage('Deploy') {
            steps {
                sh '''
                    echo "Building Docker image..."
                    docker build -t ci-demo .

                    echo "Stopping old container if it exists..."
                    docker rm -f ci-demo-container || true

                    echo "Running new container..."
                    docker run -d -p 8080:8090 --name ci-demo-container ci-demo
                '''
            }
        }
    }
}
