<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Waktu Shalat</title>
</head>
<body>
    <h1>Waktu Shalat</h1>
    
    <?php
    // Fungsi untuk mendapatkan waktu shalat (contoh sederhana)
    function getWaktuShalat() {
        return [
            'Subuh' => '04:30',
            'Dzuhur' => '12:00',
            'Ashar' => '15:30',
            'Maghrib' => '18:00',
            'Isya' => '19:30'
        ];
    }

    $waktuShalat = getWaktuShalat();
    ?>

    <table border="1">
        <tr>
            <th>Shalat</th>
            <th>Waktu</th>
        </tr>
        <?php foreach ($waktuShalat as $shalat => $waktu): ?>
        <tr>
            <td><?php echo $shalat; ?></td>
            <td><?php echo $waktu; ?></td>
        </tr>
        <?php endforeach; ?>
    </table>
    
</body>
</html>
