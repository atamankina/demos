import boto3


def main():
    """S3 list buckets demo."""

    # Create an S3 resource object using Boto3
    s3 = boto3.resource('s3')

    # List existing S3 buckets
    buckets = s3.buckets.all()

    # Print the list of bucket names
    for bucket in buckets:
        print(bucket.name)
        

if __name__ == '__main__':
    main()
