# Ensure you login to the cluster as cluster-admin


    # Create the workspace template

    oc process -f devworkspace-template.yaml -p USERNAME=iam-rraghuve-redhat-com | oc create -f - -n iam-rraghuve-redhat-com-devspaces-3n4b06
    # Create the workspace 
    oc process -f devworkspace.yaml -p USERNAME=iam-rraghuve-redhat-com | oc create -f - -n iam-rraghuve-redhat-com-devspaces-3n4b06 &

