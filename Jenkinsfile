pipeline {
    agent any
    stages {
        stage('Install Requirements') {
            steps {
                sh "pip install -r requirements.txt"
            }
        }

        stage('Tests') {
            steps {
                sh "coverage run tests/test_suite.py"
            }
        }

        stage('Static Code Analysis') {
            steps {
                echo "Code is analyzed here, I can not perform the analysis since my computer is working slow"
            }
        }
    }
    post { 
            success { 
                echo 'This runs only on success'
            }
            failure { 
                echo 'This block runs only on failure'
                echo 'Sending the build log to the developer who has broke the build is a common practice.'
            }
        }
}
