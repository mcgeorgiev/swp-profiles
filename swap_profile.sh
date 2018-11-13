NEW_PROFILE=$1
source swap_profile
OLD_PROFILE=$PROFILE

PROFILES=profiles


for file in $(find ${PROFILES} -mindepth 1) 
do
  if [ ! -f $file ]; then
    echo "Profile not found!"
    exit 1
  fi
  # echo "$(basename "$file")"
done

if [[ -e "profiles/$NEW_PROFILE" ]]; then
  echo "Swapping $OLD_PROFILE for $NEW_PROFILE"
  echo "PROFILE=${NEW_PROFILE}" > swap_profile
else 
  echo "Profile not found"
  exit 1
fi

exit 0
