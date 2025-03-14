; First is default
LoadLanguageFile "${NSISDIR}\Contrib\Language files\French.nlf"

; Language selection dialog
LangString InstallerLanguageTitle  ${LANG_FRENCH} "Langue du programme d’installation"
LangString SelectInstallerLanguage  ${LANG_FRENCH} "Veuillez sélectionner la langue du programme d’installation"

; subtitle on license text caption
LangString LicenseSubTitleUpdate ${LANG_FRENCH} " Mise à jour"
LangString LicenseSubTitleSetup ${LANG_FRENCH} " Configuration"

LangString MULTIUSER_TEXT_INSTALLMODE_TITLE ${LANG_FRENCH} "Mode d'installation"
LangString MULTIUSER_TEXT_INSTALLMODE_SUBTITLE ${LANG_FRENCH} "Installer pour tous les utilisateurs (nécessite l'admin) ou seulement pour l'utilisateur actuel?"
LangString MULTIUSER_INNERTEXT_INSTALLMODE_TOP ${LANG_FRENCH} "Lorsque vous exécutez ce programme d'installation avec des droits d'administrateur, vous pouvez choisir d'installer dans (par exemple) c:\Program Files ou le dossier AppData\Local."
LangString MULTIUSER_INNERTEXT_INSTALLMODE_ALLUSERS ${LANG_FRENCH} "Installer pour tous les utilisateurs"
LangString MULTIUSER_INNERTEXT_INSTALLMODE_CURRENTUSER ${LANG_FRENCH} "Installer seulement pour l'utilisateur actuel"

; installation directory text
LangString DirectoryChooseTitle ${LANG_FRENCH} "Répertoire d'installation" 
LangString DirectoryChooseUpdate ${LANG_FRENCH} "Sélectionnez le répertoire de Firestorm pour installer la nouvelle version ${VERSION_LONG}. (XXX) :"
LangString DirectoryChooseSetup ${LANG_FRENCH} "Sélectionnez le répertoire dans lequel installer Firestorm :"

LangString MUI_TEXT_DIRECTORY_TITLE ${LANG_FRENCH} "Répertoire d'installation"
LangString MUI_TEXT_DIRECTORY_SUBTITLE ${LANG_FRENCH} "Sélectionnez le répertoire dans lequel installer Firestorm:"

LangString MUI_TEXT_INSTALLING_TITLE ${LANG_FRENCH} "Télécharger et installer Firestorm..."
LangString MUI_TEXT_INSTALLING_SUBTITLE ${LANG_FRENCH} "Installation du client Firestorm dans $INSTDIR"

LangString MUI_TEXT_FINISH_TITLE ${LANG_FRENCH} "Installation de Firestorm"
LangString MUI_TEXT_FINISH_SUBTITLE ${LANG_FRENCH} "A installé le client Firestorm dans $INSTDIR."

LangString MUI_TEXT_ABORT_TITLE ${LANG_FRENCH} "Échec de l'installation"
LangString MUI_TEXT_ABORT_SUBTITLE ${LANG_FRENCH} "Ne pas installer le client Firestorm sur $INSTDIR."

; CheckStartupParams message box
LangString CheckStartupParamsMB ${LANG_FRENCH} "Impossible de trouver le programme '$INSTNAME'. La mise à jour silencieuse a échoué."

; installation success dialog
LangString InstSuccesssQuestion ${LANG_FRENCH} "Démarrer Firestorm maintenant ?"

; remove old NSIS version
LangString RemoveOldNSISVersion ${LANG_FRENCH} "Vérification de l'ancienne version en cours..."

; check windows version
LangString CheckWindowsVersionDP ${LANG_FRENCH} "Vérification de la version de Windows en cours..."
LangString CheckWindowsVersionMB ${LANG_FRENCH} "Firestorm prend uniquement en charge Windows Vista SP2."
LangString CheckWindowsServPackMB ${LANG_FRENCH} "Il est recommandé d'exécuter Firestorm sur le dernier service pack de votre système d'exploitation.$\nCela contribuera à amliorer les performances et la stabilité du programme."
LangString UseLatestServPackDP ${LANG_FRENCH} "Veuillez utiliser Windows Update pour installer le dernier Service Pack."

; checkifadministrator function (install)
LangString CheckAdministratorInstDP ${LANG_FRENCH} "Vérification de la permission pour effectuer l'installation en cours..."
LangString CheckAdministratorInstMB ${LANG_FRENCH} "Il semblerait que votre compte soit « limité ».$\nPour installer Firestorm, vous devez avoir un compte « administrateur »."

; checkifadministrator function (uninstall)
LangString CheckAdministratorUnInstDP ${LANG_FRENCH} "Vérification de la permission pour effectuer la désinstallation en cours..."
LangString CheckAdministratorUnInstMB ${LANG_FRENCH} "Il semblerait que votre compte soit « limité ».$\nPour désinstaller Firestorm, vous devez avoir un compte « administrateur »."

; checkcpuflags
LangString MissingSSE2 ${LANG_FRENCH} "Cette machine ne semble pas disposer d'un CPU avec la prise en charge de SSE2 qui est requise pour exécuter Firestorm ${VERSION_LONG}. Voulez-vous continuer ?"

; Extended cpu checks (AVX2)
LangString MissingAVX2 ${LANG_FRENCH} "Votre processeur ne prend pas en charge les instructions AVX2. Veuillez télécharger la version pour anciens processeurs depuis : %DLURL%-legacy-cpus/"
LangString AVX2Available ${LANG_FRENCH} "Votre processeur prend en charge les instructions AVX2. Vous pouvez télécharger la version optimisée AVX2 pour de meilleures performances depuis : %DLURL%/. Voulez-vous la télécharger maintenant ?"
LangString AVX2OverrideConfirmation ${LANG_FRENCH} "If you believe that your PC can support AVX2 optimization, you may install anyway. Do you want to proceed?"
LangString AVX2OverrideNote ${LANG_FRENCH} "By overriding the installer, you are about to install a version that might crash immediately after launching. If this happens, please immediately install the standard CPU version."

; closesecondlife function (install)
LangString CloseSecondLifeInstDP ${LANG_FRENCH} "En attente de la fermeture de Firestorm..."
LangString CloseSecondLifeInstMB ${LANG_FRENCH} "Firestorm ne peut pas être installé si l'application est déjà lancée..$\n$\nFinissez ce que vous faites puis sélectionnez OK pour fermer Firestorm et continuer.$\nSélectionnez ANNULER pour annuler l'installation."
LangString CloseSecondLifeInstRM ${LANG_FRENCH} "Firestorm failed to remove some files from a previous install."

; closesecondlife function (uninstall)
LangString CloseSecondLifeUnInstDP ${LANG_FRENCH} "En attente de la fermeture de Firestorm..."
LangString CloseSecondLifeUnInstMB ${LANG_FRENCH} "Firestorm ne peut pas être désinstallé si l'application est déjà lancée.$\n$\nFinissez ce que vous faites puis sélectionnez OK pour fermer Firestorm et continuer.$\nSélectionnez ANNULER pour annuler la désinstallation."

; CheckNetworkConnection
LangString CheckNetworkConnectionDP ${LANG_FRENCH} "Connexion au réseau en cours de vérification..."

; error during installation
LangString ErrorSecondLifeInstallRetry ${LANG_FRENCH} "Firestorm installer encountered issues during installation. Some files may not have been copied correctly."
LangString ErrorSecondLifeInstallSupport ${LANG_FRENCH} "Please reinstall viewer from https://www.firestormviewer.org/downloads/ and contact https://www.firestormviewer.org/support/ if issue persists after reinstall."

; ask to remove user's data files
LangString RemoveDataFilesMB ${LANG_FRENCH} "Suppression des fichiers du cache dans le dossier Documents et Paramètres?"

; delete program files
LangString DeleteProgramFilesMB ${LANG_FRENCH} "Il y a encore des fichiers dans votre répertoire Firestorm.$\n$\nIl est possible que vous ayez créé ou déplacé ces dossiers vers : $\n$INSTDIR$\n$\nVoulez-vous les supprimer ?"

; uninstall text
LangString UninstallTextMsg ${LANG_FRENCH} "Cela désinstallera Firestorm ${VERSION_LONG} de votre système."

; ask to remove registry keys that still might be needed by other viewers that are installed
LangString DeleteRegistryKeysMB ${LANG_FRENCH} "Voulez-vous supprimer les clés de registre de l'application ?$\n$\nIl est recommandé de conserver les clés de registre si vous avez d'autres versions de Firestorm installées."

; <FS:Ansariel> Ask to create protocol handler registry entries
LangString CreateUrlRegistryEntries ${LANG_FRENCH} "Voulez-vous enregistrer Firestorm comme gestionnaire par défaut pour les protocoles de monde virtuel ?$\n$\nSi vous avez d'autres versions de Firestorm installées, cela écrasera les clés de registre existantes."

; <FS:Ansariel> Optional start menu entry
LangString CreateStartMenuEntry ${LANG_FRENCH} "Créer une entrée dans le menu de démarrage ?"

; <FS:Ansariel> Application name suffix for OpenSim variant
LangString ForOpenSimSuffix ${LANG_FRENCH} "for OpenSimulator"

LangString DeleteDocumentAndSettingsDP ${LANG_FRENCH} "Suppression de fichiers dans le dossier Documents and Settings."
LangString UnChatlogsNoticeMB ${LANG_FRENCH} "Cette désinstallation ne supprimera PAS vos journaux de conversations Firestorm et autres fichiers privés. Si vous souhaitez le faire vous-même, supprimez le dossier Firestorm dans votre dossier utilisateur AppData\Roaming."
LangString UnRemovePasswordsDP ${LANG_FRENCH} "Suppression des mots de passe sauvegardés par Firestorm."

LangString MUI_TEXT_LICENSE_TITLE ${LANG_FRENCH} "Contrat de licence pour Vivox Voice System"
LangString MUI_TEXT_LICENSE_SUBTITLE ${LANG_FRENCH} "Accord de licence supplémentaire pour les composants de Vivox Voice System."
LangString MUI_INNERTEXT_LICENSE_TOP ${LANG_FRENCH} "Veuillez lire attentivement le contrat de licence suivant avant de procéder à l'installation :"
LangString MUI_INNERTEXT_LICENSE_BOTTOM ${LANG_FRENCH} "Vous devez accepter les termes de la licence pour poursuivre l'installation."
