# sh

## If you want to set up the architecture for Flutter, run the following command in your project:
´´´bash
curl -O https://raw.githubusercontent.com/joalmr/sh/main/t_core.sh && curl -O https://raw.githubusercontent.com/joalmr/sh/main/t_feature.sh && curl -O https://raw.githubusercontent.com/joalmr/sh/main/t_arch.sh && chmod +x t_*.sh
./t_arch.sh
rm t_arch.sh  t_feature.sh t_core.sh
´´´

## If you want to set up only the core folders for Flutter, run the following command in your project:
´´´bash
curl -O https://raw.githubusercontent.com/joalmr/sh/main/t_core.sh && chmod +x t_*.sh
./t_core.sh
rm t_core.sh
´´´

## If you want to set up feature for Flutter, run the following command in your project:
´´´bash
curl -O https://raw.githubusercontent.com/joalmr/sh/main/t_feature.sh && chmod +x t_*.sh
./t_feature.sh
rm t_feature.sh
´´´