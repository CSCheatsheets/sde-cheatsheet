# `pcluster` - Command

## Show the Version of `pcluster`

Command

```shell
pcluster version
```

Output

```text
{
  "version": "3.10.1"
}
```

## Create a Cluster

```shell
# Command
pcluster create-cluster \
    --cluster-configuration [configuration_filename] \
    -n [cluster_name]

# Example
pcluster create-cluster \
    --cluster-configuration ~/.pcluster_config/launch.yaml \
    -n pcluster-trn1
```

## Describe a Cluster

Display basic information of a cluster.

```shell
# Command
pcluster describe-cluster -r [region_tag] -n [cluster_name]

# Example
pcluster describe-cluster -r us-east-1 -n pcluster-trn1
```

## List All the Clusters

Command

```shell
pcluster list-clusters
```

Output

```text
{
  "clusters": []
}
```
