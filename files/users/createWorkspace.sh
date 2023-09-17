# Ensure you login to the cluster as cluster-admin
    echo "Enter username"
    read username
    echo "Enter user-devspace-namespace"
    read namespace

    # Create the workspace template

    oc process -f devworkspace-template.yaml -p USERNAME=$username | oc create -f - -n $namespace
    # Create the workspace 
    oc process -f devworkspace.yaml -p USERNAME=$username | oc create -f - -n $namespace &

