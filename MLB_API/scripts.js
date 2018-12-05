var request = new XMLHttpRequest();
var teamName=document.querySelector("#header");
var teamName=document.querySelector("#header");
var roster;
var teamList;

request.open('GET', "http://lookup-service-prod.mlb.com/json/named.roster_40.bam?team_id='120'", true);
//PlayerList///////////////////////////////////////////////////////////////
//http://lookup-service-prod.mlb.com/json/named.roster_40.bam?team_id='121'
//TeamList///////////////////////////////////////////////////////////////////
//http://lookup-service-prod.mlb.com/json/named.team_all_season.bam?sport_code='mlb'&all_star_sw='N'&sort_order=name_asc&season='2017'
request.onload = function () {
  // Begin accessing JSON data here
  data = JSON.parse(this.response);
  playerData(data);
  //teamData(data);

 }
request.send();



function playerData(data)
{
  //Collects data
  roster=data.roster_40.queryResults.row;

  //Takes the data and convert it to Oracle syntax//////////////////////////////////////////////
  for(var i=0;i<roster.length;i++)
  {
   header.innerHTML="<h1>"+roster[i].team_name+"<h1>";
   var playerData="INSERT INTO Player VALUES ('"+roster[i].name_display_first_last+"', '"+roster[i].jersey_number+"', '"
                +roster[i].birth_date+"', '"+roster[i].position_txt+"', '"+roster[i].college+"', '"
                +roster[i].team_name+"', '"+roster[i].player_id+"');";


  //////////////CONVERT TO HTML TEXT////////////////////////////////////

   var para = document.createElement("p");
   var node = document.createTextNode(playerData);
   para.appendChild(node);
   var element = document.getElementById("div1");
   element.appendChild(para);
 }

}
function teamData(data)
{
  teamList=data.team_all_season.queryResults.row;
  var teamData="INSERT INTO Team VALUES('"+teamList[i].name_display_full+"', '"+teamList[i].team_id+"', '"+teamList[i].venue_name+"');";
  var para = document.createElement("p");
  var node = document.createTextNode(playerData);
  para.appendChild(node);
  var element = document.getElementById("div1");
  element.appendChild(para);
}
