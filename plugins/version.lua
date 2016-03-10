--------------------------------------------------
--                                              --
--            Developer: @AmirDark              --
--             Support: @DarkTeam               --
--                                              --
--------------------------------------------------

do

function run(msg, matches)
  return '⚡️ Xamarin Plus Bot v1.0\n    \n  📢 Channel : @DarkTeam\n  👤 Admin : @AmirDark\n  \n  🙏 Special Thanks to :\n  \n        @PokerFace_Dev\n        @ShahabDark\n        @MR_Flat\n        @Sinaw1\n  \n Checkout yeo.ir/XamarinPlus\n' 
end

return {
  patterns = {
    "^[!#/]xamarinplus$",
    "^xamarinplus$",
    "^[!#/]xamarin$",
    "^xamarin$",
    "^[!#/]version$",
    "^version$"
  }, 
  run = run 
}

end
