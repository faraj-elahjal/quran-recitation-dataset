#!/bin/bash

# Number of files per batch
CHUNK_SIZE=100

# Audio files directory
AUDIO_DIR="quran-recitation-dataset - all"

# Ensure the directory exists
if [ ! -d "$AUDIO_DIR" ]; then
  echo "❌ Directory $AUDIO_DIR does not exist"
  exit 1
fi

echo "🚀 Starting to upload files in batches of $CHUNK_SIZE files each..."

# File counter
count=0
batch=1

# Iterate over audio files
find "$AUDIO_DIR" -type f \( -iname "*.wav" -o -iname "*.mp3" -o -iname "*.m4a" -o -iname "*.wma" -o -iname "*.aac" -o -iname "*.ogg" \) | while read -r file
do
  git add "$file"
  ((count++))

  # When a batch is complete
  if (( count % CHUNK_SIZE == 0 )); then
    echo "🟢 Uploading batch $batch..."
    git commit -m "upload: audio batch $batch"
    git push origin main
    ((batch++))
  fi
done

# Upload remaining files in the last batch (if any)
if (( count % CHUNK_SIZE != 0 )); then
  echo "🟢 Uploading the final batch (remaining)..."
  git commit -m "upload: final audio batch"
  git push origin main
fi

echo "✅ All audio files have been successfully