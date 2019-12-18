pipeline {
    agent any
    stages {
        stage('Tests') {
            steps {
                sh "which python"
                sh "which pip"
                //sh "python coverage run tests/test_suite.py"
            }
        }

        stage('Static Code Analysis') {
            environment {
                scannerHome = tool 'SonarQubeScanner'
            }
            steps {
                withSonarQubeEnv('SonarQube') {
                    sh "${scannerHome}/bin/sonar-scanner"
                }
                //timeout(time: 10, unit: 'MINUTES') {
                    //waitForQualityGate abortPipeline: true
                //}
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
