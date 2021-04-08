module.exports = async function main(callback) {
    try {
        // retrieve accounts from local node
        const accounts = await web3.eth.getAccounts();
        console.log(accounts);

        // set up truffle contract representing the deployed box contract
        const Box = artifacts.require('Box');
        const box = await Box.deployed();

        // replace the value with a new value
        await box.store(23);

        // retrieve the current value 
        const value = await box.retrieve();
        console.log('Current value of the box is: ', value.toString());

        callback(0)
    } catch (error) {
        console.error(error);
        callback(1);
    }

}