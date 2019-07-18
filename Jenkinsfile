pipeline {
    agent any
    tools {
        jdk 'openjdk11'
    }
    stages {
        stage('mvn') {
            steps {
                withMaven(maven: 'maven3') {
                    sh 'mvn clean'
                    withCredentials([string(credentialsId: '8f727d14-0e9d-4b39-b456-ad7422d6f788', variable: 'TOKEN')]) {
                        sh 'mvn sonar:sonar -Dsonar.login=$TOKEN'
                    }
                    sh 'mvn deploy'
                }
            }
        }
    }
}
