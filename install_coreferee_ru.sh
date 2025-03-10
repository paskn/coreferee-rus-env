# Install uv if you don't alreadya have it
# wget -qO- https://astral.sh/uv/install.sh | sh

# rebuild the environment
uv sync --no-cache  

# activate the environment
source .venv/bin/activate

# install one of spacy's models for Russian
python -m spacy download ru_core_news_sm

# test that spacy is installed and working
python -m spacy validate

# clone the coreferee fork supporting russian lang
cd ..
git clone https://github.com/paskn/coreferee/
cd coreferee

# install coreferee russian
python -m coreferee install ru 
