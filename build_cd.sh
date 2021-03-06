
#!/bin/bash

echo "Building redoc..."

# Bundle docs into zero-dependency HTML file
npx redoc-cli@0.13.2 bundle openapi/openapi.yaml && \
mv redoc-static.html index.html && \
echo "Changed name from redoc-static.html to index.html" && \
# Add favicon
sed -i '7 i \ \ <link rel="icon" type="image/png" href="favicon.png"/>' index.html && \
echo -e "\nDone!"