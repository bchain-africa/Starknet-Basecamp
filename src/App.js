import React, { useState, useEffect } from 'react';
import { Provider, Contract } from 'starknet';

const provider = new Provider({ baseUrl: 'https://alpha4.starknet.io' });
const contractAddress = '0x23a0281d9ccd443b2067799ae4fa97a217679f5edb5a65c30264f3957bc3edf';
const contractABI = [
  {
    "name": "increase_balance",
    "type": "function",
    "inputs": [
      {
        "name": "amount",
        "type": "felt252"
      }
    ],
    "outputs": []
  },
  {
    "name": "get_balance",
    "type": "function",
    "inputs": [],
    "outputs": [
      {
        "name": "",
        "type": "felt252"
      }
    ]
  }
];

const contract = new Contract(contractABI, contractAddress, provider);

function App() {
  const [balance, setBalance] = useState(0);

  useEffect(() => {
    async function fetchBalance() {
      try {
        const result = await contract.call('get_balance');
        console.log('Fetched balance:', result);
        if (result && result.length > 0) {
          setBalance(result[0]);
        }
      } catch (error) {
        console.error('Error fetching balance:', error);
      }
    }
    fetchBalance();
  }, []);

  const increaseBalance = async () => {
    try {
      await contract.invoke('increase_balance', [2]); // Ensure '2' is correctly handled
      const result = await contract.call('get_balance');
      console.log('New balance after increase:', result);
      if (result && result.length > 0) {
        setBalance(result[0]);
      }
    } catch (error) {
      console.error('Error increasing balance:', error);
    }
  };

  return (
    <div>
      <h1>Current Balance: {balance.toString()}</h1>
      <button onClick={increaseBalance}>Increase Balance</button>
    </div>
  );
}

console.log('Contract ABI:', contractABI);
console.log('Contract Address:', contractAddress);

export default App;
