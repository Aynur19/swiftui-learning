//
//  MemorizeGameData.swift
//  Memorize
//
//  Created by Aynur Nasybullin on 17.04.2023.
//

import Foundation

enum EmojiTypes {
    case smileyFace(String = "Smiley Face")
    case catFaces(String = "Cat Face")
    case emotion(String = "Emotion")
    case handsAndOtherBodyParts(String = "Hands and Other Body Parts")
    case animalsAndNature(String = "Animal and Nature")
    case foodAndDrinks(String = "Food and Drinks")
    case travelAndPlaces(String = "Travel and Places")
    case transport(String = "Transport")
    case time(String = "Time")
    case skyAndWeather(String = "Sky and Weather")
    case activity(String = "Activity")
    case awardMedals(String = "Award Medals")
    case sport(String = "Sport")
    case games(String = "Games")
    case artsAndCrafts(String = "Arts and Crafts")
    case clothingObjects(String = "Clothing Objects")
    case sound(String = "Sound")
    case musicalInstrument(String = "Musical Instrument")
    case phoneAndComputer(String = "Phone and Computer")
    case lightAndVideo(String = "Light and Video")
    case bookAndPaper(String = "Book and Paper")
    case mail(String = "Mail")
    case office(String = "Office")
    case lock(String = "Lock")
    case tool(String = "Tool")
    case science(String = "Science")
    case medical(String = "Medical")
    case household(String = "Household")
    case zodiac(String = "Zodiac")
    case avSymbol(String = "AV Symbol")
    case otherSymbol(String = "Other Symbol")
    case keycap(String = "Keycap")
    case alphanumericSymbol(String = "Alphanumeric Symbols")
    case japaneseButton(String = "Japanese Buttons")
    case geometric(String = "Geometric")
    case flag(String = "Flag")
    case countryFlag(String = "CountryFlag")
}

class MemorizeGameData {
    
    public static func getEmojis(emojiType: EmojiTypes) -> [String] {
        var emojis: [String]
        switch emojiType {
        case .smileyFace: emojis = getSmileyFaceEmojis()
        case .catFaces: emojis = getCatFacesEmojis()
        case .emotion: emojis = getEmotionEmojis()
        case .handsAndOtherBodyParts: emojis = getHandsAndOtherBodyPartsEmojis()
        case .animalsAndNature: emojis = getAnimalsAndNatureEmojis()
        case .foodAndDrinks: emojis = getFoodAndDrinksEmojis()
        case .travelAndPlaces: emojis = getTravelAndPlacesEmojis()
        case .transport: emojis = getTransportEmojis()
        case .time: emojis = getTimeEmojis()
        case .skyAndWeather: emojis = getSkyAndWeatherEmojis()
        case .activity: emojis = getActivityEmojis()
        case .awardMedals: emojis = getAwardMedalsEmojis()
        case .sport: emojis = getSportEmojis()
        case .games: emojis = getGamesEmojis()
        case .artsAndCrafts: emojis = getArtsAndCraftsEmojis()
        case .clothingObjects: emojis = getClothingObjectsEmojis()
        case .sound: emojis = getSoundEmojis()
        case .musicalInstrument: emojis = getMusicalInstrumentEmojis()
        case .phoneAndComputer: emojis = getPhoneAndComputerEmojis()
        case .lightAndVideo: emojis = getLightAndVideoEmojis()
        case .bookAndPaper: emojis = getBookAndPaperEmojis()
        case .mail: emojis = getMailEmojis()
        case .office: emojis = getOfficeEmojis()
        case .lock: emojis = getLockEmojis()
        case .tool: emojis = getToolEmojis()
        case .science: emojis = getScienceEmojis()
        case .medical: emojis = getMedicalEmojis()
        case .household: emojis = getHouseholdEmojis()
        case .zodiac: emojis = getZodiacEmojis()
        case .avSymbol: emojis = getAVSymbolEmojis()
        case .otherSymbol: emojis = getOtherSymbolEmojis()
        case .keycap: emojis = getKeycapEmojis()
        case .alphanumericSymbol: emojis = getAlphanumericSymbolEmojis()
        case .japaneseButton: emojis = getJapaneseButtonEmojis()
        case .geometric: emojis = getGeometricEmojis()
        case .flag: emojis = getFlagEmojis()
        case .countryFlag: emojis = getCountryFlagEmojis()
        }
        return emojis.shuffled()
    }
    
    private static func getSmileyFaceEmojis() -> [String] {
        ["🙂", "😀", "😃", "😄", "😁", "😅", "😆", "🤣", "😂", "🙃", "😉", "😊", "😇", "😎", "🤓", "🧐", "🥳", "🥰", "😍", "🤩", "😘", "😗", "😚", "😙", "🥲", "😋", "😛", "😜", "🤪", "😝", "🤑", "🤗", "🤭", "🤫", "🤔", "😐", "🤐", "🤨", "😑", "😶", "😏", "😒", "🙄", "😬", "🤥", "😪", "😴", "😌", "😔", "🤤", "😷", "🤒", "🤕", "🤢", "🤮", "🤧", "🥵", "🥶", "🥴", "😵", "🤯", "😕", "😟", "🙁", "☹", "😮", "😯", "😲", "😳", "🥺", "😦", "😧", "😨", "😰", "😥", "😢", "😭", "😱", "😖", "😣", "😞", "😓", "😩", "😫", "🥱", "😤", "😡", "😠", "🤬", "😈", "👿", "💀", "💩", "🤡", "👹", "👺", "👻", "👽", "👾", "🤖"]
    }
    
    private static func getCatFacesEmojis() -> [String] {
        ["😺", "😸", "😹", "😻", "😼", "😽", "🙀", "😿", "😾"]
    }
    
    private static func getEmotionEmojis() -> [String] {
        ["💋", "💌", "💘", "💝", "💖", "💗", "💓", "💞", "💕", "💟", "💔", "❤️‍🔥", "❤️‍🩹", "🧡", "💛", "💚", "💙", "💜", "🤎", "🖤", "🤍", "💯", "💢", "💥", "💫", "💦", "💨", "🕳", "💣", "💬", "👁️‍🗨️", "🗨", "🗯", "💭", "💤"]
    }
    
    private static func getHandsAndOtherBodyPartsEmojis() -> [String] {
        ["👋", "🤚", "🖐", "✋", "🖖", "👌", "🤌", "🤏", "🤞", "🤟", "🤘", "🤙", "👈", "👉", "👆", "👇", "🖕", "🫵", "👍", "👎", "✊", "👊", "🤛", "🤜", "👏", "🙌", "👐", "🤲", "🤝", "🙏", "💅", "🤳", "💪", "🦾", "🦵", "🦿", "🦶", "👂", "🦻", "👃", "🧠", "👣", "🫀", "🫁", "🦷", "🦴", "👀", "👁", "👅", "👄"]
    }
    
    private static func getAnimalsAndNatureEmojis() -> [String] {
        ["🐵", "🙈", "🙉", "🙊", "🐒", "🦍", "🦧", "🐶", "🐕", "🦮", "🐕‍🦺", "🐩", "🐺", "🦊", "🦝", "🐱", "🐈", "🐈‍⬛", "🦁", "🐯", "🐅", "🐆", "🐴", "🐎", "🦄", "🦓", "🦌", "🦬", "🐮", "🐄", "🐂", "🐃", "🐷", "🐖", "🐗", "🐽", "🐏", "🐑", "🐐", "🐪", "🐫", "🦙", "🦒", "🐘", "🦣", "🦏", "🦛", "🐭", "🐁", "🐀", "🐹", "🐰", "🐇", "🐿", "🦫", "🦔", "🦇", "🐻", "🐻‍❄️", "🐨", "🐼", "🦥", "🦦", "🦨", "🦘", "🦡", "🐾", "🦃", "🐔", "🐓", "🐣", "🐤", "🐥", "🐦", "🐧", "🕊", "🦅", "🦆", "🦢", "🦉", "🦤", "🪶", "🦩", "🦜", "🐸", "🐊", "🐢", "🦎", "🐍", "🐲", "🐉", "🦕", "🦖", "🐳", "🐋", "🐬", "🦭", "🐟", "🐠", "🐡", "🦈", "🐙", "🐚", "🐌", "🦋", "🐛", "🐜", "🐝", "🪲", "🐞", "🦗", "🪳", "🕷", "🕸", "🦂", "🦟", "🪰", "🪱", "🦠", "💐", "🌸", "💮", "🏵", "🌹", "🥀", "🌺", "🌻", "🌼", "🌷", "🌱", "🪴", "🌲", "🌳", "🌴", "🌵", "🌾", "🌿", "🍀", "🍁", "🍂", "🍃", "🪹", "🪺"]
    }
    
    private static func getFoodAndDrinksEmojis() -> [String] {
        ["🍇", "🍈", "🍉", "🍊", "🍋", "🍌", "🍍", "🥭", "🍎", "🍏", "🍐", "🍑", "🍒", "🍓", "🫐", "🥝", "🍅", "🫒", "🥥", "🥑", "🍆", "🥔", "🥕", "🌽", "🌶", "🫑", "🥒", "🥬", "🥦", "🧄", "🧅", "🍄", "🥜", "🫑", "🌰", "🍞", "🥐", "🥖", "🫓", "🥨", "🥯", "🥞", "🧇", "🧀", "🍖", "🍗", "🥩", "🥓", "🍔", "🍟", "🍕", "🌭", "🥪", "🌮", "🌯", "🫔", "🥙", "🧆", "🥚", "🍳", "🥘", "🍲", "🫕", "🥣", "🥗", "🍿", "🧈", "🧂", "🥫", "🍱", "🍘", "🍙", "🍚", "🍛", "🍜", "🍝", "🍠", "🍢", "🍣", "🍤", "🍥", "🥮", "🍡", "🥟", "🥠", "🥡", "🦀", "🦞", "🦐", "🦑", "🦪", "🍨", "🍧", "🍦", "🍩", "🍪", "🎂", "🍰", "🧁", "🥧", "🍫", "🍬", "🍭", "🍮", "🍯", "🍼", "🥛", "☕", "🫖", "🍵", "🍶", "🍾", "🍷", "🍸", "🍹", "🍺", "🍻", "🥂", "🥃", "🥤", "🧋", "🧃", "🧉", "🧊", "🥢", "🍽", "🍴", "🥄", "🔪", "🧋", "🏺"]
    }
    
    private static func getTravelAndPlacesEmojis() -> [String] {
        ["🌍", "🌎", "🌏", "🌐", "🗺", "🧭", "⛰", "🏔", "🌋", "🗻", "🏕", "🏖", "🏜", "🏝", "🏞", "🏟", "🏛", "🏗", "🧱", "🪨", "🪵", "🛖", "🏘", "🏚", "🏠", "🏡", "🏢", "🏣", "🏤", "🏥", "🏦", "🏨", "🏩", "🏪", "🏫", "🏬", "🏭", "🏯", "🏰", "💒", "🗼", "🗽", "⛪", "🕌", "🛕", "🕍", "⛩", "🕋", "⛲", "⛺", "🌁", "🌃", "🏙", "🌅", "🌄", "🌆", "🌇", "🌉", "🎠", "🎡", "🎢", "💈", "🎪"]
    }
    
    private static func getTransportEmojis() -> [String] {
        ["🚂", "🚃", "🚄", "🚅", "🚆", "🚇", "🚈", "🚉", "🚊", "🚝", "🚞", "🚋", "🚌", "🚍", "🚎", "🚐", "🚑", "🚒", "🚓", "🚔", "🚕", "🚖", "🚗", "🚘", "🚙", "🛻", "🚚", "🚛", "🚜", "🏎", "🏍", "🛵", "🦽", "🦼"]
    }
    
    private static func getTimeEmojis() -> [String] {
        ["⌛", "⏳", "⌚", "⏰", "⏱", "⏲", "🕰", "🕛", "🕧", "🕐", "🕜", "🕑", "🕝", "🕒", "🕞", "🕓", "🕟", "🕔", "🕠", "🕕", "🕡", "🕖", "🕢", "🕗", "🕣", "🕘", "🕤", "🕙", "🕥", "🕚", "🕦"]
    }
    
    private static func getSkyAndWeatherEmojis() -> [String] {
        ["🌑", "🌒", "🌓", "🌔", "🌕", "🌖", "🌗", "🌘", "🌙", "🌚", "🌛", "🌜", "🌡", "🌝", "🌞", "🪐", "⭐", "🌟", "🌠", "🌌", "⛅", "⛈", "🌤", "🌥", "🌦", "🌧", "🌨", "🌩", "🌪", "🌫", "🌬", "🌀", "🌈", "🌂", "☔", "⛱", "⚡", "⛄", "🔥", "💧", "🌊"]
    }
    
    private static func getActivityEmojis() -> [String] {
        ["🎃", "🎄", "🎆", "🎇", "🧨", "✨", "🎈", "🎉", "🎊", "🎋", "🎍", "🎎", "🎏", "🎑", "🧧", "🎀", "🎁", "🎗", "🎟", "🎫"]
    }
    
    private static func getAwardMedalsEmojis() -> [String] {
        ["🎖", "🏆", "🏅", "🥇", "🥈", "🥉"]
    }
    
    private static func getSportEmojis() -> [String] {
        ["⚽", "⚾", "🥎", "🏀", "🏐", "🏈", "🏉", "🎾", "🥏", "🎳", "🏏", "🏑", "🏒", "🥍", "🏓", "🏸", "🥊", "🥋", "🥅", "⛳", "⛸", "🎣", "🤿", "🎽", "🎿", "🛷", "🥌"]
    }
    
    private static func getGamesEmojis() -> [String] {
        ["🎯", "🪀", "🪁", "🎱", "🔮", "🪄", "🧿", "🪬", "🎮", "🕹", "🎰", "🎲", "🧩", "🧸", "🪅", "🪆", "🃏", "🀄", "🎴"]
    }
    
    private static func getArtsAndCraftsEmojis() -> [String] {
        ["🎭", "🖼", "🎨", "🧵", "🪡", "🧶", "🪢"]
    }
    
    private static func getClothingObjectsEmojis() -> [String] {
        ["👓", "🕶", "🥽", "🥼", "🦺", "👔", "👕", "👖", "🧣", "🧤", "🧥", "🧦", "👗", "👘", "🥻", "🩱", "🩲", "🩳", "👙", "👚", "👛", "👜", "👝", "🛍", "🎒", "🩴", "👞", "👟", "🥾", "🥿", "👠", "👡", "🩰", "👢", "👑", "👒", "🎩", "🎓", "🧢", "🪖", "⛑", "📿", "💄", "💍", "💎"]
    }
    
    private static func getSoundEmojis() -> [String] {
        ["🔇", "🔈", "🔉", "🔊", "📢", "📣", "📯", "🔔", "🔕", "🎼", "🎵", "🎶", "🎙", "🎚", "🎛", "🎤", "🎧", "📻"]
    }
    
    private static func getMusicalInstrumentEmojis() -> [String] {
        ["🎷", "🪗", "🎸", "🎹", "🎺", "🎻", "🪕", "🥁", "🪘"]
    }
    
    private static func getPhoneAndComputerEmojis() -> [String] {
        ["🔋", "🪫", "🔌", "💻", "🖥", "🖨", "🖱", "🖲", "💽", "💾", "💿", "📀", "🧮", "📱", "📲", "📞", "📟", "📠"]
    }
    
    private static func getLightAndVideoEmojis() -> [String] {
        ["🎥", "🎞", "📽", "🎬", "📺", "📷", "📸", "📹", "📼", "🔍", "🔎", "🕯", "💡", "🔦", "🏮", "🪔"]
    }
    
    private static func getBookAndPaperEmojis() -> [String] {
        ["📔", "📕", "📖", "📗", "📘", "📙", "📚", "📓", "📒", "📃", "📜", "📄", "📰", "🗞", "📑", "🔖", "🏷", "💰", "🪙", "💴", "💵", "💶", "💷", "💸", "💳", "🧾", "💹"]
    }
    
    private static func getMailEmojis() -> [String] {
        ["📧", "📩", "📤", "📥", "📦", "📫", "📪", "📬", "📭", "📮", "🗳"]
    }
    
    private static func getOfficeEmojis() -> [String] {
        ["💼", "📁", "📂", "🗂", "📅", "📆", "📇", "📈", "📉", "📊", "📋", "📌", "📍", "📎", "🖇", "📏", "📐", "✂", "🗃", "🗄", "🗑"]
    }
    
    private static func getLockEmojis() -> [String] {
        ["🔒", "🔓", "🔏", "🔐", "🔑", "🗝"]
    }
    
    private static func getToolEmojis() -> [String] {
        ["🔨", "🪓", "⛏", "🛠", "🗡", "⚔", "🔫", "🪃", "🏹", "🛡", "🪚", "🔧", "🪛", "🔩","🗜", "🦯", "🔗", "⛓", "🪝", "🧰", "🧲", "🪜"]
    }
    
    private static func getScienceEmojis() -> [String] {
        ["🧪", "🧫", "🧬", "🔬", "🔭", "📡"]
    }
    
    private static func getMedicalEmojis() -> [String] {
        ["💉", "🩸", "💊", "🩹", "🩼", "🩺", "🩻"]
    }
    
    private static func getHouseholdEmojis() -> [String] {
        ["🚪", "🛗", "🪞", "🪟", "🛏", "🛋", "🪑", "🚽", "🪠", "🚿", "🛁", "🪤", "🪒", "🧴", "🧷", "🧹", "🧺", "🧻", "🪣", "🧼", "🫧", "🪥", "🧽", "🧯", "🛒"]
    }
    
    private static func getZodiacEmojis() -> [String] {
        ["♈", "♉", "♊", "♋", "♌", "♍", "♎", "♏", "♐", "♑", "♒", "♓", "⛎"]
    }
    
    private static func getAVSymbolEmojis() -> [String] {
        ["🔀", "🔁", "🔂", "⏸", "⏩", "⏭", "⏯", "⏪", "⏮", "🔼", "⏫", "🔽", "⏬", "⏹", "⏺", "🎦", "🔅", "🔆", "📶", "📳", "📴"]
    }
    
    private static func getOtherSymbolEmojis() -> [String] {
        ["🔱", "📛", "🔰", "⭕", "✅", "❌", "❎", "➰", "➿"]
    }
    
    private static func getKeycapEmojis() -> [String] {
        ["#️⃣", "*️⃣", "0️⃣", "1️⃣", "2️⃣", "3️⃣", "4️⃣", "5️⃣", "6️⃣", "7️⃣", "8️⃣", "9️⃣", "🔟"]
    }
    
    private static func getAlphanumericSymbolEmojis() -> [String] {
        ["🔠", "🔡", "🔢", "🔣", "🔤", "🆎", "🆑", "🆒", "🆓", "🆔", "🆕", "🆖", "🆗", "🆘", "🆙", "🆚"]
    }
    
    private static func getJapaneseButtonEmojis() -> [String] {
        ["🈁", "🈶", "🈯", "🉐", "🈹", "🈚", "🈲", "🉑", "🈸", "🈴", "🈳", "🈺", "🈵"]
    }
    
    private static func getGeometricEmojis() -> [String] {
        ["🔴", "🟠", "🟡", "🟢", "🔵", "🟣", "🟤", "⚫", "⚪", "🟥", "🟧", "🟨", "🟩", "🟦", "🟪", "🟫", "⬛", "⬜", "🔶", "🔷", "🔸", "🔹", "🔺", "🔻", "💠", "🔘", "🔳", "🔲"]
    }
    
    private static func getFlagEmojis() -> [String] {
        ["🏁", "🚩", "🎌", "🏴", "🏳", "🏳️‍🌈", "🏳️‍⚧️", "🏴‍☠️"]
    }
    
    private static func getCountryFlagEmojis() -> [String] {
        ["🇦🇨", "🇦🇩", "🇦🇪", "🇦🇫", "🇦🇬", "🇦🇮", "🇦🇱", "🇩🇿", "🇦🇲", "🇦🇴", "🇦🇶", "🇦🇷", "🇦🇸", "🇦🇹", "🇦🇺", "🇦🇼", "🇦🇽", "🇦🇿", "🇧🇦", "🇧🇩", "🇧🇪", "🇧🇫", "🇧🇬", "🇧🇭", "🇧🇮", "🇧🇯", "🇧🇱", "🇧🇲", "🇧🇳", "🇧🇴", "🇧🇶", "🇧🇷", "🇧🇸", "🇧🇹", "🇧🇻", "🇧🇼", "🇧🇾", "🇧🇿", "🇨🇦", "🇨🇨", "🇨🇩", "🇨🇫", "🇨🇬", "🇨🇭", "🇨🇮", "🇨🇰", "🇨🇱", "🇨🇲", "🇨🇳", "🇨🇴", "🇨🇵", "🇨🇷", "🇨🇺", "🇨🇻", "🇨🇼", "🇨🇽", "🇨🇾", "🇨🇿", "🇩🇪", "🇩🇬", "🇩🇯", "🇩🇰", "🇩🇲", "🇩🇴", "🇪🇦", "🇪🇨", "🇪🇪", "🇪🇬", "🇪🇭", "🇪🇷", "🇪🇸", "🇪🇹", "🇪🇺", "🇫🇮", "🇫🇯", "🇫🇰", "🇫🇲", "🇫🇴", "🇫🇷", "🇬🇦", "🇬🇧", "🇬🇩", "🇬🇪", "🇬🇫", "🇬🇬", "🇬🇭", "🇬🇮", "🇬🇱", "🇬🇲", "🇬🇳", "🇬🇵", "🇬🇶", "🇬🇷", "🇬🇸", "🇬🇹", "🇬🇺", "🇬🇼", "🇬🇾", "🇭🇰", "🇭🇲", "🇭🇳", "🇭🇷", "🇭🇹", "🇭🇺", "🇮🇨", "🇮🇩", "🇮🇪", "🇮🇱", "🇮🇲", "🇮🇳", "🇮🇴", "🇮🇶", "🇮🇷", "🇮🇸", "🇮🇹", "🇯🇪", "🇯🇲", "🇯🇴", "🇯🇵", "🇰🇪", "🇰🇬", "🇰🇭", "🇰🇮", "🇰🇲", "🇰🇳", "🇰🇵", "🇰🇷", "🇰🇼", "🇰🇾", "🇰🇿", "🇱🇦", "🇱🇧", "🇱🇨", "🇱🇮", "🇱🇰", "🇱🇷", "🇱🇸", "🇱🇹", "🇱🇺", "🇱🇻", "🇱🇾", "🇲🇦", "🇲🇨", "🇲🇩", "🇲🇪", "🇲🇫", "🇲🇬", "🇲🇭", "🇲🇰", "🇲🇱", "🇲🇲", "🇲🇳", "🇲🇴", "🇲🇵", "🇲🇶", "🇲🇷", "🇲🇸", "🇲🇹", "🇲🇺", "🇲🇻", "🇲🇼", "🇲🇽", "🇲🇾", "🇲🇿", "🇳🇦", "🇳🇨", "🇳🇪", "🇳🇬", "🇳🇫", "🇳🇮", "🇳🇱", "🇳🇴", "🇳🇵", "🇳🇷", "🇳🇺", "🇳🇿", "🇴🇲", "🇵🇦", "🇵🇪", "🇵🇫", "🇵🇬", "🇵🇭", "🇵🇰", "🇵🇱", "🇵🇲", "🇵🇳", "🇵🇷", "🇵🇸", "🇵🇹", "🇵🇼", "🇵🇾", "🇶🇦", "🇷🇪", "🇷🇴", "🇷🇸", "🇷🇺", "🇷🇼", "🇸🇦", "🇸🇧", "🇸🇨", "🇸🇩", "🇸🇪", "🇸🇬", "🇸🇭", "🇸🇮", "🇸🇯", "🇸🇰", "🇸🇱", "🇸🇲", "🇸🇳", "🇸🇴", "🇸🇷", "🇸🇸", "🇸🇹", "🇸🇻", "🇸🇽", "🇸🇾", "🇸🇿", "🇹🇦", "🇹🇨", "🇹🇩", "🇹🇫", "🇹🇬", "🇹🇭", "🇹🇯", "🇹🇰", "🇹🇱", "🇹🇲", "🇹🇳", "🇹🇴", "🇹🇷", "🇹🇹", "🇹🇻", "🇹🇼", "🇹🇿", "🇺🇦", "🇺🇬", "🇺🇲", "🇺🇳", "🇺🇸", "🇺🇾", "🇺🇿", "🇻🇦", "🇻🇨", "🇻🇪", "🇻🇬", "🇻🇮", "🇻🇳", "🇻🇺", "🇼🇫", "🇼🇸", "🇽🇰", "🇾🇪", "🇾🇹", "🇿🇦", "🇿🇲", "🇿🇼", "🏴󠁧󠁢󠁥󠁮󠁧󠁿", "🏴󠁧󠁢󠁳󠁣󠁴󠁿", "🏴󠁧󠁢󠁷󠁬󠁳󠁿"]
    }
}
