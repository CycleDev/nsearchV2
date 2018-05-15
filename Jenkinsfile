node {
    def JAR_VERSION="6.2.0"

    stage('Clone repository') {
        // Edit these properties
        print "JAR version will be ${JAR_VERSION}"

        // Jenkins automatically retrieved the YAML and Dockerfile from BitBucket when it retrieved this Jenkinsfile

        // Retrieve the uberjar from Nexus
        sh "curl http://nexus.charterlab.com/content/groups/public/com/twc/naturalsearchV2-svc/twc-naturalsearchV2-svc/${JAR_VERSION}/twc-naturalsearchV2-svc-${JAR_VERSION}.jar --output twc-naturalsearchV2-svc.jar"

        // List the files currently in the workspace
        print "Files in workspace:"
        sh "ls"
    }

    stage('Build') {
         // Create docker image. It contains everything for deployment.
         print "Build docker image"
         docker.build("naturalsearchv2-svc")
    }
}
