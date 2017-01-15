/**
 * Created by Administrator on 2016/12/14/014.
 */
var today=new Date();
var hourNow=today.getHours();
var greeting;

if(hourNow>18){
    greeting='Good evening!';
}else if(hourNow>12){
    greeting='Good afternoon!';
}else if(hourNow>6){
    greeting='Good morning!';
}else {
    greeting='Welcome!';
}

document.write('<h3>'+greeting+'</h3>');
