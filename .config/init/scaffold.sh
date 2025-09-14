#!/bin/bash
echo "Generating base folder structure..."

mkdir -p apps/app_name/{application/features,domain/ports,infrastructure/adapters}
mkdir -p packages/shared/{application,domain,infrastructure/adapters}

echo "Done!"