#!/bin/bash

echo '[Unit]
Description=Ollama Service
After=network-online.target

[Service]
ExecStart=/usr/local/bin/ollama serve
User=ollama
Group=ollama
Restart=always
RestartSec=3
Environment="PATH=/home/nex/.local/share/pnpm:/usr/local/cuda/bin:/home/nex/.local/share/solana/install/active_release/bin:/home/nex/miniforge3/bin:/home/nex/miniforge3/condabin:/opt/ros/humble/bin:/home/nex/mambaforge/bin:/home/nex/perl5/bin:/home/nex/.platformio/penv/bin:~/.npm-global/bin:/home/nex/.npm-global/lib/node_modules:/home/nex/.krew/bin:/snap/bin:/home/nex/.yarn/bin:/home/nex/.local/bin:/home/nex/.rvm/bin:/home/nex/scripts:/home/nex/bin:/home/nex/.gem/ruby/2.7.0/bin:/home/nex/.local/share/solana/install/active_release/bin:/home/nex/.cargo/bin:/home/nex/.local/bin:/home/nex/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/snap/bin"

[Install]
WantedBy=default.target
' > /etc/systemd/system/ollama.service
