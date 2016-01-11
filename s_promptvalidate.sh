#!/bin/sh


checksite() {
  if `echo $site | egrep -q "asg|chi|dfw|frf|lon|phx|was|tyo"` ; then
    valid=false
    echo $valid
  fi
}

promptsite() {

  valid=true
  while $valid
  do
    echo "Enter a valid site, asg|chi|dfw|frf|lon|phx|was|tyo: "
    read site
    valid=$(checksite ${site})
    nsite=$site
#    echo $valid
    if [ ${valid} == "false" ]; then
       echo "you have entered a valid site $nsite" 
       exit 0
    fi

  done

}

promptsite
