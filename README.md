A small wrapper to build and run [quartz](https://quartz.jzhao.xyz/) completely in a docker container. No need to install node.js at all. Can thus be used effectively in build pipelines for your website.

# Installation

1. `docker build -t quartz .` 
2. `cp quartzcmd /usr/local/bin` 
3. `chmod +x /usr/local/bin/quartzcmd`

# Usage

You can now use _quartz_ as if you had install it locally, by using `quartzcmd`. You can build and serve your content simply by issuing

   quartzcmd build --serve

It will use the current directory as the content. This will run the webserver locally with port 8080.

## quartz.config.ts and quartz.layout.ts

If you want to use your own config and layout files, copy them into a folder `.quartz` in your current directory. You can only have one of each or both.

It is advisable to add the following to the `quart.config.ts`

  ignorePatterns: [".git", ".quartz", ".obsidian", "output"],

## Output

By default, the command will create an `output` folder in your current directory that is used to store all the build files in. If neccessary add it to your `.gitignore` file.

