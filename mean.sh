mean ()
{
        mkdir -p "$1" &&
        cd "$1"
        touch server.js
        touch README.md
        mkdir -p server
        cd server
        mkdir controllers
        mkdir models
        mkdir config
        cd config
        touch mongoose.js routes.js
        cd ../..
        mkdir client
        cd client
        touch index.html
        mkdir partials
        cd ..
        cd server/controllers
        echo "how many controllers:"
        read controller
        for((i=1; i<= "$controller"; i++))
        do
                echo "name of controller:"
                read name
                touch "$name".js
        done
        cd ../models
        echo "how many models:"
        read model
        for((i=1; i<= "$model"; i++))
        do
                echo "name of model:"
                read name
                touch "$name".js
        done
        cd ../..
}
