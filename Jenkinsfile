pipeline 
{
    agent any

    stages {
        stage ('Compile Stage') {

            steps {
                withMaven(maven : 'MAVEN_HOME') {
                    bat 'mvn clean compile'
                }
            }
        }
        stage ('Testing Stage') {

            steps {
                withMaven(maven : 'MAVEN_HOME') {
                    bat 'mvn test'
                }
            }
        }
        stage ('Installing Stage') {
            steps {
                withMaven(maven : 'MAVEN_HOME') {
                    bat 'mvn install'
                }
            }
        }
    }
}
