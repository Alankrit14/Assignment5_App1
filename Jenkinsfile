pipeline {
agent any
stages {
stage ('Compile Stage') {
steps {
withMaven(maven : 'MAVEN_HOME', jdk: 'JAVA_HOME') {
bat'mvn clean'
}
}
}
stage ('Testing Stage') {
steps {
withMaven(maven : 'MAVEN_HOME', jdk: 'JAVA_HOME') {
bat'mvn test'
}
}
}
stage ('Install Stage') {
steps {
withMaven(maven : 'MAVEN_HOME', jdk: 'JAVA_HOME') {
bat'mvn install'
}
}
}
}
}
