import dep1 from'./dep-1.js';function getComponent(){const a=document.createElement('div');return a.innerHTML=dep1(),a}document.body.appendChild(getComponent());