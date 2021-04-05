locals {
    # active_vpc = [data.aws_vpcs.dev_vpc_list.name]
    sample_active_vpc = [
        "aws-gxus-p-acc-05-us1-vpc-01",
        "aws-gxus-p-acc-05-us1-vpc-02",
        "aws-gxus-p-acc-05-us1-vpc-03",
        "aws-gxus-p-acc-05-us1-vpc-04",
        "aws-gxus-p-acc-05-us1-vpc-08",
        "aws-gxus-p-acc-05-us1-vpc-22"
        ]
    all_vpc = [
        for i in range(1,100) : format ("%s%02d", local.default_vpc_name, i)
    ]
    available_vpc = flatten([setsubtract(
        local.all_vpc, local.sample_active_vpc
    )])
    default_vpc_name = "aws-gxus-p-acc-05-us1-vpc-"
}


