#[Console]::OutputEncoding = [System.Text.Encoding]::GetEncoding('utf-8')

$FOLDER_NAME = "aviutl_plugin_sdk"
$INSTALL_PATH = "./lib"

if (-not (Test-Path ./lib)) {
    mkdir ./lib
}

if (Test-Path "${INSTALL_PATH}/${FOLDER_NAME}") {
    echo "既に$FOLDER_NAME(aviutlプラグイン開発SDK)が存在しています。"
    exit
} else {
    curl.exe http://spring-fragrance.mints.ne.jp/aviutl/aviutl_plugin_sdk.zip -o "${INSTALL_PATH}/${FOLDER_NAME}.zip"
    Expand-Archive -Path ./lib/aviutl_plugin_sdk.zip -DestinationPath "$INSTALL_PATH/${FOLDER_NAME}"

    Remove-Item -Force "$INSTALL_PATH/${FOLDER_NAME}.zip"
    echo "$FOLDER_NAME(aviutlプラグイン開発SDK)のインストールが終了しました。"
}


