#!/bin/bash
<< readme
This script takes backup of given directory

usage:
./backup.sh <path of directory> <path of backup directory>

readme

source_dir=$1

target_dir=$2

timestamp=$(date '+%Y-%m-%d-%H-%M-%S')

backup_dir="${target_dir}/backup_${timestamp}"

function create_backup {


        zip -r "${backup_dir}.zip" "${source_dir}" > /dev/null

        if [ $? -eq 0 ]; then
                echo "Backup created successfully!!!"
        else
                echo "Backup was not performed for $timestamp"
        fi
}

function perform_rotation {

        backups=($(ls -t "$target_dir/backup_"*.zip))

        if [ "${#backups[@]}" -gt 5 ]; then
                backups_to_remove=("${backups[@]}")

                for backup in "${backups_to_remove[@]}";
                do
                        rm "$backup"
                done
        fi

        #echo "backup deleted Successfully"
}

create_backup
perform_rotation
