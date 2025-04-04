# Youtube_MP3_Downloader

Ce projet permet de télécharger des vidéos YouTube au format MP3 en utilisant yt-dlp et Node.js.
Prérequis un système basé sur Debian (Ubuntu, Pop!_OS, etc.)
Sinon install_dependencies.sh ne fonctionnera pas

    curl, git, nodejs, npm, python3, pip3

Installation

    Clonez ce dépôt :
    git clone git@github.com:Azhabel/Youtube_MP3_Downloader.git
    cd Youtube_MP3_Downloader

    Exécutez le script d'installation des dépendances :
    chmod +x install_dependencies.sh
    chmod +x download.sh
    sudo ./install_dependencies.sh

Utilisation

    Ajoutez les URL des vidéos YouTube dans un fichier urls.txt, une URL par ligne :
    https://www.youtube.com/watch?v=aqMqQtjqkyo
    https://www.youtube.com/watch?v=KnZ7AszUvSo
    https://www.youtube.com/watch?v=Bw5OxNeTgGk

    Lancez le script de téléchargement :
    ./download.sh

Les fichiers MP3 seront enregistrés dans le dossier downloads/.

Si yt-dlp rencontre des erreurs de récupération, essayez de le mettre à jour :
pip3 install -U yt-dlp
Licence

Ce projet est sous licence MIT.

