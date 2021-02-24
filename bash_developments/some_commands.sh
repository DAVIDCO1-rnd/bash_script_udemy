#!/bin/bash

# folder bashPitfalls exists
# file/folder 'not_existing_file' does not exist

#redirecting stdout to file_output
ls bashPitfalls not_existing_file 1> file_output


#redirecting stderr to file_error
ls bashPitfalls not_existing_file 2> file_error


#redirecting stdout and stderr to file_both_output
ls bashPitfalls not_existing_file &> file_both_outputs

#redirecting stdout and stderr to file_both_output
ls bashPitfalls not_existing_file > file_both_outputs 2>&1
