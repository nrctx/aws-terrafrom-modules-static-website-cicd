import json
import boto3  # The AWS SDK for Python
import os

def lambda_handler(event, context):
    #Initialize the Client
    ses = boto3.client('ses')
    ADMIN_EMAIL = "marlon.g.viloria@gmail.com" 

    try:
        #Parsing the "Event"
        body = json.loads(event['body'])
        
        #Data Extraction
        email_content = f"Name: {body['name']}\nEmail: {body['email']}\n\nMessage:\n{body['message']}"

        #The Action (Sending the Email)
        ses.send_email(
            Source=ADMIN_EMAIL, 
            Destination={'ToAddresses': [ADMIN_EMAIL]},
            Message={
                'Subject': {'Data': f"Portfolio Contact: {body['subject']}"},
                'Body': {'Text': {'Data': email_content}}
            }
        )

        #The Response (The "Handshake")
        return {
            'statusCode': 200,
            'headers': {
                "Access-Control-Allow-Origin": "*", 
                "Access-Control-Allow-Methods": "POST,OPTIONS"
            },
            'body': json.dumps({"message": "Sent!"})
        }
    except Exception as e:
        return {'statusCode': 500, 'body': json.dumps(str(e))}