
var ExamContract = artifacts.require("./ExamContract.sol");

module.exports = function(deployer) {
  deployer.deploy(ExamContract);
};

var sendether = artifacts.require("./sendether.sol");

module.exports = function(deployer) {
  deployer.deploy(sendether);
};

var receiveether = artifacts.require("./receiveether.sol");

module.exports = function(deployer) {
  deployer.deploy(receiveether);
};