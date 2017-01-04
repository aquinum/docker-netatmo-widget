# Docker container for Netatmo PHP widget

Easy to use container for displaying Netatmo weather station web widget.

## The widget

I'm not the author of the widget app. Thank you to [Potsky](https://github.com/potsky) (Raphael Barbate) for creating this great app. You can find the [source code at github](https://github.com/potsky/Netatmo).

To understand the parameters used as environment variables below, please refer to the widget doc `app/README.md`

The widget app is stored as a git submodule. Do not forget to `git submodule init` and `git submodule update`.

## The container

Before creating the container, you can customize css in the `app-custom` directory. Images used in the css can be customized with the sub-dir `app-custom/img`.

Once customized:

    $ docker build -t dehy/netatmo-widget .
    $ docker run -d \
          -e ACCOUNT_EMAIL=netatmo_accout_email \
          -e ACCOUNT_PASSWORD=netatmo_account_password \
          -e API_CLIENT_ID=api_client_id \
          -e API_CLIENT_SECRET=api_client_secret \
          -p 80:80 dehy/netatmo-widget

If you want to use docker-compose, copy `docker-compose.dist.yml` to `docker-compose.yml`, change the variables and launch with `$ docker-compose up`. If you need to customize css, you need to `docker-compose build` to enforce the changes.

## Author

Arnaud de Mouhy
https://github.com/dehy
