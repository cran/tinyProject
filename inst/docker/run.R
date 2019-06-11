#!/usr/bin/env Rscript

args <- commandArgs(TRUE)

# Extract script name
scriptName <- args[!grepl("=", args)]

if (length(scriptName) == 0) {
  scriptName <- "main"
} else {
  scriptName <- scriptName[1]
}

# extract variables
args <- args[grepl("=",args)]

args <- strsplit(args, "=")

for (arg in args) {
  assign(arg[1], type.convert(arg[2], as.is = TRUE))
}


prSource(scriptName)
