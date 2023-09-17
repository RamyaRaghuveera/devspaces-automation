# Ensure you login to the cluster as cluster-admin
    echo "Enter application github repo"
    read githubrepo
    

    # Create the workspace template
    oc get devworkspaces scaling-devspaces -o yaml|grep mainUrl
