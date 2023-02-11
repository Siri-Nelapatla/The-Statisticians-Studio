{
    "version":2,
    "builds":[
        {
            "src": "django_blog/wsgi.py",
            "use": "@vercel/python",
            "config": {"maxLambdaSize": "15mb","runtime":"python3.11"}

        },
        {
            "src": "build_files.sh",
            "use": "@vercel/static-build",
            "config":{
                "disDir": "staticfiles_build"
            }
        }
    
    ],
    "routes":[
        {
            "src":"/statsic/(.*)",
            "dest":"/static/$1"
        },
        {
            "src":"/(.*)"
            "dest": "django_blog/wsgi.py"
        }
    ]


}