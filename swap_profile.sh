NEW_PROFILE=$1
source swap_profile
OLD_PROFILE=$PROFILE

PROFILES=profiles

if [[ -e "profiles/$NEW_PROFILE" ]]; then
  echo "Swapping $OLD_PROFILE for $NEW_PROFILE"
  echo "PROFILE=~/swp_profiles/profiles/${NEW_PROFILE}" > swap_profile
else 
  echo "Profile not found"
  exit 1
fi

exit 0
