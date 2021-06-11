pipeline 
{
    agent any

    stages {
        stage ('Compile Stage') {

            steps {
                withMaven(maven : 'Maven 3.8.1') {
                    bat 'mvn clean'
                }
            }
        }
        stage ('Testing Stage') {

            steps {
                withMaven(maven : 'Maven 3.8.1') {
                    bat 'mvn test'
                }
            }
        }
        stage ('Installing Stage') {
            steps {
                withMaven(maven : 'Maven 3.8.1') {
                    bat 'mvn install'
                }
            }
        }
    }
}
