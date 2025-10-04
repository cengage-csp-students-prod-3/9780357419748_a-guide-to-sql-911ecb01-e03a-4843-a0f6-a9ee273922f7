import csv
import os
import re
import requests
from urllib.parse import unquote
import os

def find_image_urls():
    image_pattern = re.compile(r'https://(?:cdn|storage)[^\s"\')]+')
    img_tag_pattern = re.compile(r'<img[^>]+src=[\'"]([^\'"]+)[\'"]')

    image_urls = set()

    for root, dirs, files in os.walk("."):
        for file in files:
            if file.endswith('.md'):
                file_path = os.path.join(root, file)
                with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
                    content = f.read()
                    matches = image_pattern.findall(content)
                    img_tag_matches = img_tag_pattern.findall(content)
                    all_matches = matches + img_tag_matches

                    for url in all_matches:
                        if 'https://cdn' in url or 'https://storage' in url:
                            image_urls.add((file_path, url))

    return image_urls

def write_to_csv(image_urls):
    with open('images.csv', 'w', newline='') as csvfile:
        fieldnames = ['File Path', 'Image URL']
        writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
        writer.writeheader()

        for file_path, url in image_urls:
            writer.writerow({'File Path': file_path, 'Image URL': url})

def download_and_move_images():
    failed_downloads = []
    successful_downloads = 0
    
    with open('images.csv', 'r') as csvfile:
        reader = csv.DictReader(csvfile)
        for row in reader:
            file_path = row['File Path']
            url = row['Image URL']
            #'storage.googleapis.com' or 
            if 'cdn.filestack' in url:
                directory = os.path.dirname(file_path)
                # Adjusted to create assets directory at the correct level
                assets_dir = os.path.join(os.path.dirname(directory), 'assets')
                if not os.path.exists(assets_dir):
                    os.makedirs(assets_dir)
                
                # Download the image
                response = requests.get(url, stream=True)
                if response.status_code == 200:
                    # Decode URL to get a clean filename
                    decoded_filename = os.path.basename(unquote(url))
                    normalized_filename = normalize_filename(decoded_filename)
                    # Check if there is a filetype and if not, default to .png
                    file_extension = os.path.splitext(normalized_filename)[1]
                    if not file_extension:
                        normalized_filename += '.png'

                    local_filename = os.path.join(assets_dir, normalized_filename)
                    with open(local_filename, 'wb') as f:
                        for chunk in response.iter_content(chunk_size=8192):
                            f.write(chunk)
                    print(f"Downloaded and moved image from {url} to {local_filename}")
                    # Replace the URL in the original file
                    relative_path = os.path.relpath(local_filename, os.path.dirname(file_path))
                    replace_url_in_file(file_path, url, relative_path)
                    successful_downloads += 1
                else:
                    print(f"Failed to download image from {url}")
                    failed_downloads.append(url)
    
    if failed_downloads:
        with open('failed_to_download.txt', 'w') as f:
            for url in failed_downloads:
                f.write(f"Failed to download image from {url}\n")

    print(f"Total number of successful downloads: {successful_downloads}")

def replace_url_in_file(file_path, old_url, new_path):
    with open(file_path, 'r', encoding='utf-8', errors='ignore') as file:
        content = file.read()

    new_content = content.replace(old_url, new_path)

    with open(file_path, 'w', encoding='utf-8', errors='ignore') as file:
        file.write(new_content)

def normalize_filename(filename):
    return filename.replace(' ', '-')

def main():
    image_urls = find_image_urls()
    total_count = len(image_urls)
    print(f"Total count of URLs: {total_count}")

    if total_count > 0:
        write_to_csv(image_urls)
        with open('images.csv') as f:
            print(f.read())
        download_and_move_images()
    else:
        print("No image URLs found.")

if __name__ == "__main__":
    main()
