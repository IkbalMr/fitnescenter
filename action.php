<?php
require_once('config.php');
include_once($config_dirAdmin.'class/classDatabase.php');
include_once($config_dirAdmin.'class/classIndoTime.php');
include_once($config_dirAdmin.'class/classSession.php');

$myDb	= new database();
$myTime = new indoTime();
$mySes	= new session();

$tgl = date('Y-m-d');
$jam = $myTime->getJamNow();
$hari = $myTime->getHari(date("N"));
$bulan = $myTime->getBulan($bulan=$bl=$month=date(m));

# Process to cek in out	
	$cekmem=$myDb->select("SELECT * FROM member ");
	$result = $myDb->getRow($cekmem);
	if ($result['tgl_tempo']=$tgl){
		$sql = "UPDATE member SET status='tidak aktif' WHERE tgl_tempo ='$tgl'";
		$myDb->update($sql);
	}
	$cekNIK=$myDb->selectOne("SELECT id_member FROM member WHERE id_member = '$_POST[id]' AND status='aktif'");
	if ($cekNIK != false) {
		$sql = $myDb->select("SELECT jam_masuk, jam_pulang FROM absensi WHERE id_member = '$_POST[id]' AND tgl='$tgl'");
		$result = $myDb->getRow($sql);
		if (($result['jam_masuk'] != '') && ($result['jam_pulang'] = '')) {
			//$mySes->unreg('errStatus', true);
		}
		else {
			$sql = $myDb->select("SELECT jam_masuk FROM absensi WHERE id_member = '$_POST[id]' AND tgl='$tgl'");
			$result = $myDb->getRow($sql);
			if ($result['jam_masuk'] != '') {
				$counter = $myDb->selectOne("SELECT MAX(counter)+1 FROM absensi");				
				$sql = "UPDATE absensi SET jam_pulang='$jam', counter='$counter' WHERE id_member = '$_POST[id]' AND tgl = '$tgl'";
				$myDb->update($sql);				

			}
			else {
				$counter = $myDb->selectOne("SELECT MAX(counter)+1 FROM absensi");				
				$sql = "INSERT INTO absensi(id_member, tgl, kd_waktu, jam_masuk, counter) VALUES('$_POST[id]', '$tgl', '$hari', '$jam', '$counter')";
				$myDb->insert($sql);
			}
		}
	}
	else { 
		$mySes->reg('errNIK', true);
	}

header('location:index.php');
?>
