node 
{
        stage ('SCM Checkout') {
            git 'https://github.com/Alankrit14/Assignment5_App1'
        }
    

        stage ('Compile-Package') {
            def mvnHome = tool name: 'MAVEN_HOME', type: 'maven'
            bat "${mvnHome}/bin/mvn package"
        }
}
