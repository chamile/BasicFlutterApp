import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:noa_mobile/src/screens/home/home_screen_details.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeScreenDetails()),
          );
        },
        child: Text('Details'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            // SvgPicture.asset('assets/images/home.svg'),
//             SvgPicture.string(
//                 '''<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
// <rect width="24" height="24" fill="url(#pattern0)"/>
// <defs>
// <pattern id="pattern0" patternContentUnits="objectBoundingBox" width="1" height="1">
// <use xlink:href="#image0" transform="scale(0.00714286)"/>
// </pattern>
// <image id="image0" width="140" height="140" xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAIwAAACMCAYAAACuwEE+AAAAAXNSR0IArs4c6QAADTxJREFUeJztnVusXUUZgL+e1JTYBjZBi4ANByEFKoHtXUDkGLmKsUUwIfDQ8qIvitXom+GWoGAU+qi+cPDFBGOoFxSq0lYUVC49FVAwKIVGoSfK2SU0oZH0+DB7cXZ3917zz6x/Luuc+ZJJk57Z8///rH/Nbc38A4VCoVAoFArtY1lqBUZwPHBqP72n/++7gP8Cs8A/gceAR1IpqMR5wIeBU4DVwHHAK8DzGBv/0U+zqRTMnWuBZ4B5h/QocH0KZT35AvAn3GzcjambQp+NwN9xq8Th9C/gK7EVF3IU8CXg3zSz8Vngusi6Z8WVwEs0q8ThtAe4PKYRFq4A9qJr4wvAhphG5MBd6FbicLoXWBXNmiNZBdw3Qi/NdEc0axLyTuAPhK3IKv0ZODqOWYdxdF92DBt/ixksL0pW0nys4pp2AcfGMK7PsX2ZMW18hrStaRAmgG3Ercgq7ezLD80E8PsE9s0DD5DnEok3XyVNRVbpxvAmcktC++YxM7FFwUnAAdyM/w9wK2Y2cAZmavpezDrGdseyqnR+QBsv9NTpIeDzwLq+jWf2bb4VeNWxrNcwC5yt5ye4GX0j8HZLme/ArLvsdyj7aUWbhnnOQY854Ia+DXWswtTF6w5l/0jRpiSsRW7si5hlchfWAI87yPhMI2tGc5WD/EeBExzLPwVTN1IZZzSyJjF3IjPyWdwrcpDvCOX8sYGMcTwplH17AxknIZ9hfruBnKS8DehhN3A3OmsJ0hnKmQqyKs4WynxIQdZxyL61zWLqvnVciawy1yrJO10o7wYleSCf/Z2qJG+dUN56JXlRmcZu2G+UZd4hkPlzRXkPCuTdpigP4HcCmXcry4zCPuyGfVZZ5mkCmXsV5b0ikDepKA/gGoHMfcoyg3MWdqN6gWRL1ny0sMmZU5Q1iGRseFYIwaGWzC8T5Pl1INm7BXmOV5DzbkGepxTkjELSlV8aQnAoh7lEkGdbINkShzlRQY6kDIkuPkjqTvIMnAnhMCuAjwvyPRBANsj672MU5NhWo8HsQw7BrwR5LsQ8C1VCOMwUdkWfQ3fwudTYi1nIq2MFxmlUCeEwkr7zwQBylxqSOlQfx4RwmJTjl6VEknGMtsOsxmxDqONNYIey3KXIdkxd1nEW5pmooe0wnxbkeRizVlJoxgHM9zMbn9IUqu0wkiawjF/0iD6O0XSYZciUK+MXPSR1eRmK+301HeaDQMeSZxazq76gw5PYP7F0gA9oCdR0GEnrEupzwFLml4I8at2SpsOU8UsaJHWqNr3WcpiVwLmCfMVh9JF8YjkP84wao+UwFwHLLXl2U2KdhGAW+Islz3LgkxrCtBymzI7SIqlblXGMlsOU8Utaoo1jNBxmDfZNzgeRrUoW/HgYU8d1nIZ5Vo3QcBjJ54CHsBtU8Ocg5tuSjSuaCtJwmDJ+yYMo45imDrMcM0OyUcYv4ZHU8cXYZ7O1NHWYc7HP7/cCf2sop2Dnr9iXLVYCH20ipKnDlM1SefELQZ5Gs6WmDlPGL3kRfBzTxGE6mC/UdcxTHCYm1dHdOj6EfVfBWJo4zKXY91k8RrgTjoUj6WHi5dSxjAbdUpMRc5tXd++iuSN7v6WBeRDTitRxCSaWsTNNHEayYJdrd9RNrUBAtgHfsOTxbmF8u6R12HejHyBMxCcbRyWQOY4UujyKfZP9GjwDK/k6jHR3ne0YRAi0w2s0IYUubxLwsL6vw+Q8fskp9GgqXaLuwrOxAngDe3ySxl9GPdkh0C1WSnVgb41AtzfwOKzv08JcIBD0POWwfUr2Ym5zq2MF8DHXgn0cphy2bwdBDrn5OEz5ftQOkgUdGmQ19r7xfyjtUPdEMobZrCBns0BOyqADKzHPwqaj02F91xZGErvuEcph+xw4gFmTseHULbk6TBm/tAv1cYyrw0hCR5TxSz5InsXFLgW6OMz7sX9w6wFPuChQCMrj2D+yrgbeJy3QxWEkI+oH0A2cXGjGPMqrvi4OU8Yv7UR1HCN1mJXIVgUloScKcblfkOcChEsh0v0wnxDkfZr2HLY/leYxbLWutAnNLOaepbpglcsx8ZWtziV1mMW2uvvFfloqbMMe3fQSBA4j7ZLK+KXdRA2eGOxTeSDK9oYjUduSImlhLhfk2Uk5bJ8zBzE3udmwfvqROEzbxi9vpFZggJx0Ufl6bXOYZcg+OOY0ftmTWoEBctJF8owuwnLWzOYwksP2s4S9dd6VV1IrMEBOujyFfdmjA3ykLoPNYSTdUVmsaw+Si7lqZ0u2dRitw/ZdFm5Bmxrx9xkWPpLtFJTXlHto3l1MAhsVdKmjA5wzIG9y4P+r+nKpu23Ydb4UuMVNzQWlDlE/DTvE6C/YXeDLmDDxPtPRFzDHWX1WY28WlD/KaV2ZEsi52aPcCzG2vyAof1Tahan7Uac7O4LfH8Jzx+TVgsIHD353Gxo6Ls1hLu7eINS7jQ6zEbgPY6tm3VUv3qC9Twh+d5W8Ghb4gaDg2zDN5N3Kho5L27E/7DY5zBTGphh1dzfmWX1TkPf7PhXykqDgeyMZO8pxxh1DbYPDdInnKMPpx4I8L40zetws6XRkJxc/J8gTgikWmts20cHovAsdp/XhakGeNcDaUX8Y5zBBblUPwGZM5ecaq2WQDqZV0TjiEoORPjDOYaId1Fagi3GanGO+dDEtYs46DjPSB0Y5TLWZpk1MYt5e6UwqJpswurWhFRxk5Ka5UQt34u16Duxk4VP/qE/+XUyFdjHOesyIPDY6mKnpT30UDEQXuKnB7/cDWzGLjFUCs1BXOeBg3a1vIGuYaluudYvG7eiMxqcxb5fPm7UB2IKpmBAzhVizJJ/U69vuo2MHU3fTSrp8SyL0yYZCptGLvNTBTE21HSdHh+n1bdXquiZp7jjWM2aSw/bj0g7CjX00jM/ZYaYJN8bp0mwXYq1e13kWOq1nXy2bPPXL1WF6fZti4PvCXVtX6A89CoxlcEWX5l1UDg7TI/402+eFu6euwH0OBfVIN/2exMwY2uowM6SbZk/h9sLtG1fQOQ6FpGhZhmnS0qR0mBQtyzCuLc3Zowr5ukMBPvs8QrCB9jlMLouiko+0VfraqAKeEf441gBXiiR0WC4Ok7pVHkY6ED5iz/YK7Lvr5jErjzkucbtOG1M4TC6H2gbpYJ6pTfdD9A8qVt+SrsF+lQ3o3AISgly6yDpy1LGHbIvIMoyPvIXkDT1Inq1LhUsrE7uF2aogLxQd4DXsNhx2zbHkB9+Nor4/k+TrMDldmDGKO5ENRwA4UZB5Hjghmvr+SNdmYjrMjIKs0JyAzJbjJ5BdS/s68HIQVXXJsenPcbA7zMuYZ2zj/AnGLMoMIQl7lQM5OkxuyxDjkDj22dKAQt9roklEcnubD9KOLgmEY9QJZP15bg+ijhdTKzBATofxbUie8VTTi84LS4wJ4GRLnpzeWAmSID6rFORIrufLcZGzjv2Wv588gX2NIKegOBIk3cBpCnIWo8PYxluTi7FLkkwPX1WQIylDokurmMDe5di6rNyQdDc/U5AjCTJ4SEFOTM6x/H33BPYuJ/dlbR80ugpJV320gpyYWG+rWYxdUiEgE8gWllJvKXTBFrVKMyTabsvfbU18TojW4yaQNc+5bCu0EVtPW91VR1jbgKjupC1M6OB/WkgO42su1UvKym1b5jgk57JnQBYob568N09VSOLraUZ4kGxC36UoLxTOPrBVkDn3N0WygSrEQtpi2EAlOXZy2E4Ayc77OfJuZSQx40Jsf5C8bPcFkKtFB1n0zsMiZ0m3N+a4kRnku99CtJLSQ2G5Thyk55OOaCVnBD/KtZWRRqQMobv0Zds+roCESFuXkYN76ZuSW/MqPcgWcueb9EBYbuNAaXzlsXpLWpmcuibpUdkeYQeesU8saCDtimqXDlyOTqR+W7rIQ63HcHDpA5gj/WKey2F8q4NLD4TNSQoLxCTyOw0GAwiGpLphRKLTLtJNtaeQv2iirbmuZ4ZTBBRyucQhZiBll4gIKVoa1zAf4gbBxfB5zOApBq4Gpzh24hoYINYL53qBiHM37hoTTXLTiC8+N6akivLUQT55GHzhQunqc2OK14zSx/DKeM2wqzfhfo9Q6ihPPtGx5jC2aoZd9bmWqNGL5jKQG+U4Gz2Fr8eEofC9cCqHqatvhKo5/G+j62Dq3Pf+KusEQRITporz6hPOvWIHR4aOX4ZRspIxGDq+yVt2PfkcT91Es/FdD1NfMxweOn4/C8+jqrspmr0o+/u/V9n+0cWve4qZeuR7OUWoEPhaaYYAXXiHZhGlQ6Y9IQxWRCO2cKi0g8CTA80Q7lpvR44fRIfxnUSETNG67lya2S2hDQ3AFtLXW8yQ9W9R3TSSwuCt5L+LrY5J0nXvW0jcImvfNFKXQt6YkoIp4jmO5rVEKnQx3tvkDoBxzec0ec6AtNiEsVG7m9+DeSY5TwgAo+Bm/N+eGVpiaACmaPbizWDqPkjdSRbuNKgWl2B0lzLDwo7+NkW7Cs3gQbhJFrqUagUeSt0VCoVCoVAoWPk/Xl8I4YYtQQkAAAAASUVORK5CYII="/>
// </defs>
// </svg>''')
          ],
        ),
      ),
    );
  }
}
