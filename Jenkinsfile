pipeline{
    anget any
    stages{
        stage("Python Env Setup"){
            step{
                sh '''
                    chmod +x envsetup.sh
                    ./envsetup.sh
                '''
            }
        }

        stage("Setup Gunicorn"){
            step{
                sh '''
                    chmod +x gunicorn.sh
                    ./gunicorn.sh
                '''
            }
        }

        stage("Setup NGINX"){
            step{
                sh '''
                    chmod +x nginx.sh
                    ./nginx.sh
                '''
            }
        }
    }
}