#region English dictionary
	// Set up english dictionary	
	english = [ "BAKER","BASES","BASIC","BEACH","BEGIN","BELOW","BENCH","BIRTH","BLACK","BLAME",
				"BLIND","BLOCK","BLOOD","BOOST","BRAIN","BRAND","BREAD","BREAK","BREED","BROKE",
				"BROWN","CABLE","CARRY","CATCH","CAUSE","CHAIN","CHAIR","CHASE","CHEST","CHIEF",
				"CHILD","CLAIM","CLASS","CLEAN","CLEAR","CLOCK","CLOSE","COACH","COAST","COUNT",
				"CRAFT","CRASH","CREAM","CRIME","CROSS","CYCLE","DAILY","DANCE","DATED","DEPTH",
				"DOING","DOUBT","DOZEN","DRAFT","DRAMA","DRAWN","DREAM","DRILL","DRINK","DRIVE",
				"DROVE","DYING","EARTH","ELITE","EMPTY","ENEMY","ENJOY","ENTER","EQUAL","EVENT",
				"EXTRA","FALSE","FIGHT","FINAL","FIRST","FLOOR","FLUID","FOCUS","FORCE","FOUND",
				"FRAME","FRANK","FRAUD","FRESH","FRONT","FRUIT","FULLY","FUNNY","GIANT","GOING",
				"GRACE","GRADE","GREAT","GREEN","GUARD","GUESS","GUIDE","HAPPY","HEART","HEAVY",
				"HORSE","HOTEL","HOUSE","HUMAN","IDEAL","IMAGE","INDEX","JAPAN","JIMMY","JOINT",
				"JONES","JUDGE","KNOWN","LATER","LAUGH","LAYER","LEARN","LEGAL","LEVEL","LEWIS",
				"LIGHT","LIMIT","LINKS","LIVES","LOCAL","LOGIC","LOOSE","LYING","MAGIC","MAJOR",
				"MAKER","MARCH","MAYOR","MEANT","MEDIA","METAL","MIGHT","MINOR","MINUS","MIXED",
				"MONEY","MONTH","MOUSE","MOUTH","MOVIE","MUSIC","NEEDS","NOISE","NORTH","NOTED",
				"NOVEL","NURSE","OCEAN","ORDER","OTHER","OUGHT","PAINT","PANEL","PAPER","PARTY",
				"PEACE","PHOTO","PILOT","PITCH","PLACE","PLATE","POINT","POUND","POWER","PRESS",
				"PRICE","PRIME","PROOF","PROUD","PROVE","QUEEN","QUICK","QUIET","QUITE","RADIO",
				"REACH","READY","REFER","RIGHT","RIVAL","RIVER","ROUGH","ROUND","ROUTE","ROYAL",
				"RURAL","SCALE","SCENE","SCOPE","SCORE","SHALL","SHAPE","SHARE","SHELL","SHIFT",
				"SHIRT","SHOCK","SHOOT","SHORT","SHOWN","SIGHT","SINCE","SKILL","SLEEP","SLIDE",
				"SMALL","SMART","SMILE","SOLVE","SORRY","SOUND","SOUTH","SPACE","SPEAK","SPEED",
				"SPEND","SPENT","SPORT","STAFF","STAGE","STAKE","START","STATE","STEAM","STILL",
				"STOCK","STONE","STOOD","STORE","STORM","STUDY","STUFF","STYLE","SUGAR","SUITE",
				"SUPER","SWEET","TABLE","TAKEN","TASTE","TAXES","THANK","THEME","THERE","THESE",
				"THICK","THING","THINK","THIRD","THOSE","TIGHT","TIMES","TIRED","TITLE","TODAY",
				"TOPIC","TOTAL","TOUCH","TRADE","TRAIN","TREAT","TREND","TRIAL","TRIED","TRIES",
				"TRUST","TRUTH","TWICE","UNDER","UNION","UPSET","URBAN","USAGE","USUAL","VALID",
				"VALUE","VIDEO","VIRUS","WASTE","WATCH","WATER","WHEEL","WHERE","WHICH","WHILE",
				"WHITE","WOMAN","WORLD","WORRY","WORSE","WORST","WRITE","WRONG","WROTE","YIELD",
				"RAVEN","DAISY","FLEET","MINER","GHOUL","THORN","BORED","TIMER","SOARE","STARE",
				"SAREE","ROATE","SEARE","RAISE","CRANE","SLATE","CRATE","SLANT","TRACE","LANCE",
				"ROAST","DRAIN","ROBOT","BLAST","CARTE","LEAST","TRICE","ARROW","CHOSE","CHORE",
				"REACT","RACER","RAMEN","TAMER","PACER","ERASE","LASER","LAGER","ROTFL","PANIC"];
#endregion

#region Dictionary
	// Set up default dictionary
	dictionary = english

	// Set dictionary macro
	#macro DICTIONARY obj_dictionary.dictionary
#endregion

#region
	background_text = array_create(0)
	background_text_color = $AA9D80
	background_text_alpha = array_create(0)
	background_text_alpha_change = array_create(0)
	randomize()
	repeat (33)
	{
		array_push(background_text, DICTIONARY[random(array_length(DICTIONARY))])
		array_push(background_text_alpha, irandom(10)/10)
		array_push(background_text_alpha_change, 0.1)
	}
	
	alarm_set(0, 15)
#endregion