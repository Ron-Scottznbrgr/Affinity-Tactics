encounter_rate=5;

enemyIDs[0]=0;
enemyIDs[1]=10;
enemyIDs[2]=20;
enemyIDs[3]=30;
enemyIDs[4]=40;
enemyIDs[5]=50;
enemyIDs[6]=60;


randomize();
for(var i = 0; i < 11; i += 1) {
random_enemyIDs[i] = enemyIDs[round(random_range(0, (array_length_1d(enemyIDs)-1)))];
//show_message(array_length_1d(enemyIDs));
}

var encounter_0;
encounter_0[0]=0;
encounter_0[1]=50;
encounter_0[2]=0;

var encounter_1;
encounter_1[0]=10;
encounter_1[1]=10;
encounter_1[2]=10;
encounter_1[3]=10;
encounter_1[4]=10;

var encounter_2;
encounter_2[0]=40;
encounter_2[1]=random_enemyIDs[0];
encounter_2[2]=random_enemyIDs[1];

var encounter_3;
encounter_3[0]=020;
encounter_3[1]=020;
encounter_3[2]=00;
encounter_3[3]=000;

encounter_List[0]=encounter_0;
encounter_List[1]=encounter_1;
encounter_List[2]=encounter_2;
encounter_List[3]=encounter_3;

/*
encounter_List[0,0]=random_enemyIDs[0];
encounter_List[0,1]=random_enemyIDs[2];
encounter_List[0,2]=random_enemyIDs[1];
encounter_List[0,3]=random_enemyIDs[3];
encounter_List[0,4]=random_enemyIDs[4];
encounter_List[0,5]=random_enemyIDs[5];
encounter_List[0,6]=random_enemyIDs[6];
*/