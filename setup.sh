#!/bin/bash

# Created by: Mr Coxall
# Created on: Jun 2022
# Edited by: Ms Raffin
# Modified on: Aug 2026
# Created for: To automate the generation of SSH GitHub keys


# this script will setup your SSH key with GitHub
echo "This script will setup your SSH key with GitHub"
echo ""

echo "Please enter your full name (ex: Laila Smeeterhod): "
read  name
echo "Please enter your email address that you used to setup GitHub (ex: laila.smeeterhod@stu.ocsb.ca): "
read  email
echo "Please enter your GitHub user name (ex: LaylaS): "
read  user

echo ""
echo "You will next be asked 3 questions."
echo "Just press ENTER each time."
echo ""

# setup SSH key
ssh-keygen -t ed25519 -C "$email"
ssh-add ~/.ssh/id_ed25519
echo ""
cat ~/.ssh/id_ed25519.pub

echo ""
echo "Please copy and paste the above key into your GitHub SSH Keys."
echo "(at: https://github.com/settings/keys)"
echo "Once done, press any key."
read  any_key

echo ""
echo "Next you will be asked if you want to continue"
echo "Type 'yes' ..."
echo "Once done, press any key."
read  any_key

ssh -T git@github.com
git config --global user.email "$email"
git config --global user.name "$name"
git config --global init.defaultBranch main
git config --global pull.rebase true
git config --global fetch.prune true

echo ""
echo "To finish the setup, a new Codespace window will open up."
echo "When it does, close this orginial one and use the new Codespace window."
echo "When ready, press any key."
read  any_key

# create an ICS4U directory in the root directory
mkdir ~/ICS4UC
mkdir ~/ICS4UC/Assign
mkdir ~/ICS4UC/Assign/Assign-01
mkdir ~/ICS4UC/Assign/Assign-02
mkdir ~/ICS4UC/Assign/Assign-03
mkdir ~/ICS4UC/Assign/Assign-04
mkdir ~/ICS4UC/Intro
mkdir ~/ICS4UC/Intro/Intro-01
mkdir ~/ICS4UC/Intro/Intro-02
mkdir ~/ICS4UC/Intro/Intro-03
mkdir ~/ICS4UC/Intro/Intro-04
mkdir ~/ICS4UC/Intro/Intro-05
mkdir ~/ICS4UC/Intro/Intro-06
mkdir ~/ICS4UC/Intro/Intro-07
mkdir ~/ICS4UC/RST
mkdir ~/ICS4UC/Unit1
mkdir ~/ICS4UC/Unit1/Unit1-01
mkdir ~/ICS4UC/Unit1/Unit1-02
mkdir ~/ICS4UC/Unit1/Unit1-03
mkdir ~/ICS4UC/Unit1/Unit1-04
mkdir ~/ICS4UC/Unit2
mkdir ~/ICS4UC/Unit2/Unit2-01
mkdir ~/ICS4UC/Unit2/Unit2-02
mkdir ~/ICS4UC/Unit2/Unit2-03
mkdir ~/ICS4UC/Unit2/Unit2-04
mkdir ~/ICS4UC/Unit2/Unit2-05
mkdir ~/ICS4UC/Unit2/Unit2-06
mkdir ~/ICS4UC/Unit2/Unit2-07
mkdir ~/ICS4UC/Unit3
mkdir ~/ICS4UC/Unit3/Unit3-01
mkdir ~/ICS4UC/Unit3/Unit3-02
mkdir ~/ICS4UC/Unit3/Unit3-03
mkdir ~/ICS4UC/Unit4
mkdir ~/ICS4UC/Unit4/Unit4-01
mkdir ~/ICS4UC/Unit4/Unit4-02
mkdir ~/ICS4UC/Unit4/Unit4-03
mkdir ~/ICS4UC/Unit4/Unit4-04
mkdir ~/ICS4UC/Unit4/Unit4-05
mkdir ~/ICS4UC/Unit5
mkdir ~/ICS4UC/Unit5/Unit5-01
mkdir ~/ICS4UC/Unit5/Unit5-02
mkdir ~/ICS4UC/Unit5/Unit5-03
mkdir ~/ICS4UC/Unit5/Unit5-04
mkdir ~/ICS4UC/Unit5/Unit5-05
mkdir ~/ICS4UC/Unit5/Unit5-06
mkdir ~/ICS4UC/Unity
mkdir ~/ICS4UC/Unit4/Unity-01
mkdir ~/ICS4UC/Unit4/Unity-02
mkdir ~/ICS4UC/Unit4/Unity-03

# copy over the .vscode directory into it
cp -r .vscode ~/ICS4UC/.vscode

# update the .bashrc to add in aliases for ll, ..
cp .bashrc ~/.bashrc
source ~/.bashrc

# change into the ICS4U directory and then open Codespaces in there
cd ~/ICS4UC
code .
