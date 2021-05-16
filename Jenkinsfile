pipeline {
    agent any 
    stages {
        stage('Build') { 
            steps {                                
                sh 'python -m py_compile app.py'
            }
        }
        stage('Test') { 
            steps {
                sh 'pytest test_unit_app.py' 
            }
        }
        stage('Deploy') { 
            steps {
                sh 'echo deployworking'
            }
        }
    }
}
