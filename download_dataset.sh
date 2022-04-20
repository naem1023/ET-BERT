url="https://drive.google.com/drive/folders/1A9aOTrHRxEWMCuU_I3eQ-csmaeYYGL29?usp=sharing"
# name=$(curl google.com | grep "www\..*com")
# re="http://([^/]+)/"
re="https://drive.google.com/drive/folders/([a-zA-Z0-9_-]+)?usp=sharing"
re="/(?<=drive.google.com/drive/folders/)(.*?)(?=)\?usp=sharing)"
re="(\\bdrive.google.com/drive/folders/\\b)(.*?)(\\b?usp=sharing\\b)"
if [[ $url =~ $re ]]; then echo ${BASH_REMATCH[1]}; 
else echo "Error: Input url of google drive is wrong."; fi

wget --load-cookies ~/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget \
--quiet --save-cookies ~/cookies.txt --keep-session-cookies \
--no-check-certificate 'https://docs.google.com/uc?export=download&id=1ulJLPkDAb7yd9bXFQpfUN5UctB3hhd7Z' \
-O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1ulJLPkDAb7yd9bXFQpfUN5UctB3hhd7Z" -O pretrained_model.bin.zip && rm -rf ~/cookies.txt

https://drive.google.com/file/d/1_h2ONedVyT-7i3toazICeWn9NhDFxTsY/view?usp=sharing

wget --load-cookies ~/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget \
--quiet --save-cookies ~/cookies.txt --keep-session-cookies \
--no-check-certificate 'https://docs.google.com/uc?export=download&id=1_h2ONedVyT-7i3toazICeWn9NhDFxTsY' \
-O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1_h2ONedVyT-7i3toazICeWn9NhDFxTsY" -O flow_dataset.zip && rm -rf ~/cookies.txt