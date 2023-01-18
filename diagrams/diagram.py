from diagrams import Diagram, Cluster, Edge
from diagrams.aws.compute import EC2Instances, Lambda
from diagrams.aws.management import CloudwatchEventTimeBased
from diagrams.aws.security import IAMRole

graph_attr = {
    "fontsize": "20"
}

with Diagram("AWS Start/Stop EC2 Scheduler Diagram", filename="diagram", show=False, graph_attr=graph_attr):
    with Cluster("AWS Account"):
        with Cluster("Region"):
            monitoring = CloudwatchEventTimeBased("CloudWatch ETB Rule")
            func_start_stop_EC2 = Lambda("Lambda")
            instances = EC2Instances("EC2 Instances")
            identity = IAMRole("IAM Role")
            iam_connection = Edge(color="darkpink", style="dotted")

            monitoring >> func_start_stop_EC2 >> iam_connection << identity
            func_start_stop_EC2 >> instances
