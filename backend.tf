terraform {

		backend "s3" {
			bucket 			= "balaji-terraform-bucket"
			key 			= "remotestate/terraform.tfstate"
			region 			= "ap-south-1"
			dynamodb_table	= "new-dynamo-tfstate-lock"
		}
}
