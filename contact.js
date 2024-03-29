/**
 * Validates a phone number using a regular expression pattern.
 * @param {string} phoneNumber - The phone number to be validated.
 * @returns {boolean} - Returns true if the phone number is valid, false otherwise.
 */
function validatePhoneNumber(phoneNumber) {
    // Regular expression pattern for global phone numbers
    const pattern = /^\+(?:[0-9] ?){6,14}[0-9]$/;

    // Check if the phone number matches the pattern
    if (pattern.test(phoneNumber)) {
        return true; // Valid phone number
    } else {
        return false; // Invalid phone number
    }
}

const stateAreaCodes = {
    'CA': ['213', '310', '323', '408', '415'],
    'NY': ['212', '315', '516', '518', '607'],
    'TX': ['210', '214', '254', '281', '325'],
    'FL': ['305', '321', '352', '386', '407'],
    'IL': ['217', '224', '309', '312', '331'],
    'PA': ['215', '267', '272', '412', '484'],
    'OH': ['216', '220', '234', '330', '380'],
    'GA': ['229', '404', '470', '478', '678'],
    'NC': ['252', '336', '704', '828', '910'],
    'MI': ['231', '248', '269', '313', '517'],
    'NJ': ['201', '551', '609', '732', '848'],
    'VA': ['276', '434', '540', '571', '703'],
    'WA': ['206', '253', '360', '425', '509'],
    'AZ': ['480', '520', '602', '623', '928'],
    'MA': ['339', '351', '413', '508', '617'],
    'TN': ['423', '615', '731', '865', '901'],
    'IN': ['219', '260', '317', '574', '765'],
    'MO': ['314', '417', '573', '636', '660'],
    'MD': ['240', '301', '410', '443', '667'],
    'WI': ['262', '414', '608', '715', '920'],
    'CO': ['303', '719', '720', '970'],
    'MN': ['218', '320', '507', '612', '651'],
    'SC': ['803', '843', '864'],
    'AL': ['205', '251', '256', '334', '938'],
    'LA': ['225', '318', '337', '504', '985'],
    // Add more states as needed
};

console.log(stateAreaCodes);