pipeline {
    agent any
    stages {
        stage('Tests') {
            steps {
                echo "Tests"
            }
        }
        stage('Static Code Analysis') {
            steps {
                withSonarQubeEnv('SonarQube') {
                }
            }
        }
        //stage("Quality Gate") {
            //steps {
                //timeout(time: 1, unit: 'HOURS') {
                    // Parameter indicates whether to set pipeline to UNSTABLE if Quality Gate fails
                    // true = set pipeline to UNSTABLE, false = don't
                   //waitForQualityGate abortPipeline: true
                //}
            //}
        //}
    }
}
