const NBA = require('nba');
// Get all teams , search plaeyrs , find team By ID , and find players by ID

// const NBA = require("nba");
const curry = NBA.findPlayer('Stephen Curry');
console.log(curry);

NBA.stats.playerInfo({ PlayerID: curry.playerId }).then(console.log);

NBA.stats.playersInfo({ Season: '2017-18' })
  .then(data => {
      const res = data.filter(player => player.teamId === 1610612752); // * Knicks teamId
      console.log(res);
});
 module.exports = {
  NBA
 }
