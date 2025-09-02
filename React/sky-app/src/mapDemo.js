function MapDemo() {
  const data = [
    {
      createdAt: "2025-08-18T07:45:41.088Z",
      name: "Frederick Bode",
      avatar: "https://avatars.githubusercontent.com/u/20623865",
      id: "22",
    },
    {
      createdAt: "2025-08-19T00:53:15.017Z",
      name: "Lela Stehr",
      avatar: "https://avatars.githubusercontent.com/u/76856664",
      id: "23",
    },
    {
      createdAt: "2025-08-18T13:16:18.760Z",
      name: "Tina Cartwright",
      avatar:
        "https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/50.jpg",
      id: "24",
    },
    {
      createdAt: "2025-08-19T04:21:24.976Z",
      name: "Ms. Audrey Hirthe",
      avatar:
        "https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/24.jpg",
      id: "25",
    },
    {
      createdAt: "2025-08-18T08:35:34.792Z",
      name: "Sylvia Dietrich DVM",
      avatar:
        "https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/16.jpg",
      id: "26",
    },
    {
      createdAt: "2025-08-18T19:19:46.808Z",
      name: "Krystal Mayert",
      avatar:
        "https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/43.jpg",
      id: "27",
    },
    {
      createdAt: "2025-08-18T11:23:19.962Z",
      name: "Victoria Stoltenberg",
      avatar:
        "https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/16.jpg",
      id: "28",
    },
    {
      createdAt: "2025-08-18T16:09:43.124Z",
      name: "Belinda Douglas",
      avatar: "https://avatars.githubusercontent.com/u/19975888",
      id: "29",
    },
    {
      createdAt: "2025-08-18T17:55:02.934Z",
      name: "Eleanor Jakubowski",
      avatar:
        "https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/19.jpg",
      id: "30",
    },
    {
      createdAt: "2025-08-19T00:02:19.389Z",
      name: "Rodney Barton",
      avatar:
        "https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/57.jpg",
      id: "31",
    },
    {
      createdAt: "2025-08-18T08:49:36.620Z",
      name: "James Hintz",
      avatar:
        "https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/83.jpg",
      id: "32",
    },
    {
      createdAt: "2025-08-19T04:07:16.982Z",
      name: "Jennie Jacobson",
      avatar:
        "https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/8.jpg",
      id: "33",
    },
    {
      createdAt: "2025-08-18T23:00:41.997Z",
      name: "Mrs. Norma Steuber V",
      avatar: "https://avatars.githubusercontent.com/u/2991568",
      id: "34",
    },
    {
      createdAt: "2025-08-18T21:10:11.455Z",
      name: "Suzanne Cronin",
      avatar:
        "https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/73.jpg",
      id: "35",
    },
    {
      createdAt: "2025-08-18T17:31:10.229Z",
      name: "Johnny Ebert",
      avatar: "https://avatars.githubusercontent.com/u/177071",
      id: "36",
    },
    {
      createdAt: "2025-08-18T23:34:17.907Z",
      name: "Ryan Altenwerth",
      avatar: "https://avatars.githubusercontent.com/u/53890957",
      id: "37",
    },
    {
      createdAt: "2025-08-18T19:25:24.214Z",
      name: "Joanne Ortiz",
      avatar:
        "https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/93.jpg",
      id: "38",
    },
    {
      createdAt: "2025-08-18T09:50:49.604Z",
      name: "Gerardo Rogahn",
      avatar: "https://avatars.githubusercontent.com/u/93286860",
      id: "39",
    },
    {
      createdAt: "2025-08-18T16:20:51.568Z",
      name: "Christopher Pfannerstill",
      avatar: "https://avatars.githubusercontent.com/u/73021543",
      id: "40",
    },
    {
      createdAt: "2025-08-18T18:18:57.269Z",
      name: "Ellen Murphy",
      avatar:
        "https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/99.jpg",
      id: "41",
    },
    {
      createdAt: "2025-08-18T23:38:24.424Z",
      name: "Dora Gulgowski",
      avatar: "https://avatars.githubusercontent.com/u/56015330",
      id: "42",
    },
    {
      createdAt: "2025-08-18T15:46:18.079Z",
      name: "Dianna Fadel",
      avatar:
        "https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/42.jpg",
      id: "43",
    },
    {
      createdAt: "2025-08-18T14:11:30.895Z",
      name: "Devin Pouros DVM",
      avatar: "https://avatars.githubusercontent.com/u/67068884",
      id: "44",
    },
    {
      createdAt: "2025-08-18T16:50:14.283Z",
      name: "Franklin Prohaska",
      avatar:
        "https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/25.jpg",
      id: "45",
    },
    {
      createdAt: "2025-08-18T23:47:01.125Z",
      name: "Myra Bahringer",
      avatar:
        "https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/73.jpg",
      id: "46",
    },
    {
      createdAt: "2025-08-19T00:52:23.757Z",
      name: "Ana Kautzer",
      avatar:
        "https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/87.jpg",
      id: "47",
    },
    {
      createdAt: "2025-08-18T12:00:09.458Z",
      name: "Leslie Tillman DVM",
      avatar:
        "https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/54.jpg",
      id: "48",
    },
    {
      createdAt: "2025-08-18T21:50:10.436Z",
      name: "Martin Maggio",
      avatar:
        "https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/25.jpg",
      id: "49",
    },
    {
      createdAt: "2025-08-18T11:51:10.699Z",
      name: "Eugene Kessler-Treutel",
      avatar:
        "https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/9.jpg",
      id: "50",
    },
    {
      createdAt: "2025-08-18T23:14:06.421Z",
      name: "Dorothy Goldner-Breitenberg",
      avatar: "https://avatars.githubusercontent.com/u/17045394",
      id: "51",
    },
    {
      createdAt: "2025-08-18T06:36:01.874Z",
      name: "Pearl Tremblay MD",
      avatar: "https://avatars.githubusercontent.com/u/76384778",
      id: "52",
    },
    {
      createdAt: "2025-08-18T16:05:37.689Z",
      name: "Terrell Kemmer",
      avatar: "https://avatars.githubusercontent.com/u/88525477",
      id: "53",
    },
    {
      createdAt: "2025-08-18T15:48:07.865Z",
      name: "Edmond Reynolds",
      avatar: "https://avatars.githubusercontent.com/u/59860796",
      id: "54",
    },
    {
      createdAt: "2025-08-19T02:49:01.704Z",
      name: "Daisy Gleichner",
      avatar: "https://avatars.githubusercontent.com/u/99177989",
      id: "55",
    },
    {
      createdAt: "2025-08-18T22:35:36.437Z",
      name: "Andre Reynolds MD",
      avatar:
        "https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/43.jpg",
      id: "56",
    },
    {
      createdAt: "2025-08-18T07:31:31.219Z",
      name: "Seth Roberts",
      avatar:
        "https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/64.jpg",
      id: "57",
    },
    {
      createdAt: "2025-08-19T03:33:11.770Z",
      name: "Elisa Konopelski",
      avatar:
        "https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/7.jpg",
      id: "58",
    },
    {
      createdAt: "2025-08-19T03:07:46.753Z",
      name: "Alonzo Crist",
      avatar:
        "https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/68.jpg",
      id: "59",
    },
    {
      createdAt: "2025-08-18T23:42:44.731Z",
      name: "Donna Murray",
      avatar:
        "https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/57.jpg",
      id: "60",
    },
    {
      createdAt: "2025-08-18T15:12:15.785Z",
      name: "Claudia Kilback",
      avatar:
        "https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/72.jpg",
      id: "61",
    },
    {
      createdAt: "2025-08-18T22:10:52.588Z",
      name: "Dr. Ora Stroman",
      avatar: "https://avatars.githubusercontent.com/u/37321957",
      id: "62",
    },
    {
      createdAt: "2025-08-19T02:07:40.552Z",
      name: "Alonzo Dare",
      avatar: "https://avatars.githubusercontent.com/u/84254019",
      id: "63",
    },
    {
      createdAt: "2025-08-19T03:36:19.369Z",
      name: "Yolanda Nitzsche",
      avatar: "https://avatars.githubusercontent.com/u/23232733",
      id: "64",
    },
    {
      createdAt: "2025-08-18T06:35:33.354Z",
      name: "Meredith Herzog III",
      avatar: "https://avatars.githubusercontent.com/u/92434352",
      id: "65",
    },
    {
      createdAt: "2025-08-19T04:35:15.531Z",
      name: "Guadalupe Wisoky I",
      avatar: "https://avatars.githubusercontent.com/u/58492478",
      id: "66",
    },
    {
      createdAt: "2025-08-18T18:12:05.423Z",
      name: "Olivia Mraz DDS",
      avatar:
        "https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/94.jpg",
      id: "67",
    },
    {
      createdAt: "2025-08-18T20:53:22.324Z",
      name: "Heather Morissette",
      avatar: "https://avatars.githubusercontent.com/u/70066716",
      id: "68",
    },
    {
      createdAt: "2025-08-18T05:58:20.994Z",
      name: "Sue Nikolaus",
      avatar:
        "https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/55.jpg",
      id: "69",
    },
    {
      createdAt: "2025-08-18T09:23:14.708Z",
      name: "Anthony Crist",
      avatar: "https://avatars.githubusercontent.com/u/6939055",
      id: "70",
    },
    {
      createdAt: "2025-08-19T02:57:36.145Z",
      name: "Erin Hettinger",
      avatar:
        "https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/76.jpg",
      id: "71",
    },
    {
      createdAt: "2025-08-19T02:41:01.981Z",
      name: "Kara Hilpert",
      avatar:
        "https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/35.jpg",
      id: "72",
    },
    {
      createdAt: "2025-08-18T14:54:10.273Z",
      name: "Jasmine Kirlin",
      avatar: "https://avatars.githubusercontent.com/u/45570624",
      id: "73",
    },
    {
      createdAt: "2025-08-18T19:11:18.368Z",
      name: "Jamie Senger",
      avatar:
        "https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/20.jpg",
      id: "74",
    },
    {
      createdAt: "2025-08-19T00:39:40.363Z",
      name: "Perry Franecki",
      avatar: "https://avatars.githubusercontent.com/u/51923511",
      id: "75",
    },
    {
      createdAt: "2025-08-18T09:47:36.193Z",
      name: "Rex Ondricka-Dicki",
      avatar: "https://avatars.githubusercontent.com/u/71696900",
      id: "76",
    },
    {
      createdAt: "2025-08-18T22:04:58.086Z",
      name: "Elias Heaney",
      avatar:
        "https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/31.jpg",
      id: "77",
    },
    {
      createdAt: "2025-08-18T12:12:35.469Z",
      name: "Adrian Conroy V",
      avatar:
        "https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/72.jpg",
      id: "78",
    },
    {
      createdAt: "2025-08-18T22:49:13.775Z",
      name: "Natalie Hayes",
      avatar: "https://avatars.githubusercontent.com/u/74261785",
      id: "79",
    },
    {
      createdAt: "2025-08-18T07:53:11.148Z",
      name: "Jennie Hilll",
      avatar:
        "https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/12.jpg",
      id: "80",
    },
    {
      createdAt: "2025-08-19T03:27:27.377Z",
      name: "Alexander Bashirian",
      avatar: "https://avatars.githubusercontent.com/u/25656177",
      id: "81",
    },
    {
      createdAt: "2025-08-18T15:19:05.911Z",
      name: "Holly Schinner",
      avatar:
        "https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/3.jpg",
      id: "82",
    },
    {
      createdAt: "2025-08-18T11:11:29.807Z",
      name: "Dr. Catherine Dietrich",
      avatar:
        "https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/77.jpg",
      id: "83",
    },
    {
      createdAt: "2025-08-19T02:53:54.813Z",
      name: "Janie Aufderhar",
      avatar:
        "https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/78.jpg",
      id: "84",
    },
    {
      createdAt: "2025-08-18T08:49:17.556Z",
      name: "Sheryl Graham",
      avatar: "https://avatars.githubusercontent.com/u/35098174",
      id: "85",
    },
    {
      createdAt: "2025-08-18T23:49:07.768Z",
      name: "John Reichel",
      avatar: "https://avatars.githubusercontent.com/u/76631640",
      id: "86",
    },
    {
      createdAt: "2025-08-19T02:54:56.662Z",
      name: "Shelia Nikolaus",
      avatar:
        "https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/96.jpg",
      id: "87",
    },
    {
      createdAt: "2025-08-18T13:19:43.891Z",
      name: "Louise Wyman",
      avatar: "https://avatars.githubusercontent.com/u/31772491",
      id: "88",
    },
    {
      createdAt: "2025-08-18T21:06:58.758Z",
      name: "Edward Wolff",
      avatar:
        "https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/60.jpg",
      id: "89",
    },
    {
      createdAt: "2025-08-19T03:45:27.863Z",
      name: "Mrs. Alma O'Connell",
      avatar:
        "https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/21.jpg",
      id: "90",
    },
    {
      createdAt: "2025-08-19T01:47:15.335Z",
      name: "Rogelio Romaguera",
      avatar:
        "https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/34.jpg",
      id: "91",
    },
    {
      createdAt: "2025-08-18T18:28:44.671Z",
      name: "Casey Lebsack",
      avatar:
        "https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/27.jpg",
      id: "92",
    },
    {
      createdAt: "2025-08-19T01:11:20.318Z",
      name: "Terri Gleason",
      avatar: "https://avatars.githubusercontent.com/u/72189758",
      id: "93",
    },
    {
      createdAt: "2025-08-18T11:05:55.218Z",
      name: "Casey Bayer",
      avatar: "https://avatars.githubusercontent.com/u/41596207",
      id: "94",
    },
    {
      createdAt: "2025-08-18T16:27:01.409Z",
      name: "Tami Toy",
      avatar:
        "https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/53.jpg",
      id: "95",
    },
  ];
  return (
    <>
      <div class="container">
        <div class="row">
          {data.map((temp) => {
            return (
              <>
                <div class="card col-2">
                  <img
                    src={temp.avatar}
                    width={100}
                    style={{ filter: "blur(5px)" }}
                    className="card-img-top"
                    alt="..."
                  />

                  <div class="card-body">
                    <h5 class="card-title">{temp.name}</h5>
                    <p class="card-text">{temp.createdAt}</p>

                    <a href="#" class="btn btn-primary">
                      Submit
                    </a>
                  </div>
                </div>
              </>
            );
          })}
        </div>
      </div>
    </>
  );
}
export default MapDemo;
