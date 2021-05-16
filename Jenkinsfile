pipeline {
    agent any 
    stages {
        stage('Build') { 
            steps {                                
                sh 'python3 -m py_compile app.py'
            }
        }
        stage('Test') { 
            steps {
                sh 'pytest test_unit_app.py' 
                sh 'pytest test_integration_app.py'
                sh 'pytest test_functional_app.py'
            }
        }
        stage('Deploy') { 
            steps {
                sh 'echo deployworking'
            }
        }
    }
}
