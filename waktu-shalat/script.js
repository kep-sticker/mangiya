function getWaktuShalat() {
    return {
        'Subuh': '04:30',
        'Dzuhur': '12:00',
        'Ashar': '15:30',
        'Maghrib': '18:00',
        'Isya': '19:30'
    };
}

function tampilkanJadwalShalat() {
    const waktuShalat = getWaktuShalat();
    const tabel = document.getElementById('jadwalShalat');

    for (const [shalat, waktu] of Object.entries(waktuShalat)) {
        const row = tabel.insertRow();
        const shalatCell = row.insertCell(0);
        const waktuCell = row.insertCell(1);
        shalatCell.textContent = shalat;
        waktuCell.textContent = waktu;
    }
}

function updateWaktuSekarang() {
    const waktuSekarangElement = document.getElementById('waktuSekarang');
    const sekarang = new Date();
    
    const tanggalString = sekarang.toLocaleDateString('id-ID', {
        weekday: 'long',
        year: 'numeric',
        month: 'long',
        day: 'numeric'
    });
    
    const waktuString = sekarang.toLocaleTimeString('id-ID', { 
        hour: '2-digit', 
        minute: '2-digit', 
        second: '2-digit',
        hour12: false 
    });
    
    waktuSekarangElement.innerHTML = `${tanggalString}<br>Pukul: ${waktuString}`;
}

function getLokasiPengguna() {
    const lokasiElement = document.getElementById('lokasiPengguna');
    
    if ("geolocation" in navigator) {
        navigator.geolocation.getCurrentPosition(function(position) {
            const lat = position.coords.latitude;
            const lon = position.coords.longitude;
            getAlamat(lat, lon, lokasiElement);
        }, function(error) {
            console.log("Geolocation error:", error);
            getLokasiDariIP(lokasiElement);
        });
    } else {
        getLokasiDariIP(lokasiElement);
    }
}

function getAlamat(lat, lon, element) {
    const url = `https://nominatim.openstreetmap.org/reverse?format=json&lat=${lat}&lon=${lon}&zoom=18&addressdetails=1`;
    
    fetch(url)
        .then(response => response.json())
        .then(data => {
            const desa = data.address.village || data.address.town || data.address.city || 'Tidak diketahui';
            const kabupaten = data.address.county || data.address.state_district || 'Tidak diketahui';
            element.textContent = `Lokasi: ${desa}, ${kabupaten}`;
        })
        .catch(error => {
            console.error('Error:', error);
            getLokasiDariIP(element);
        });
}

function getLokasiDariIP(element) {
    fetch('https://ipapi.co/json/')
        .then(response => response.json())
        .then(data => {
            const kota = data.city || 'Tidak diketahui';
            const kabupaten = data.region || 'Tidak diketahui';
            element.textContent = `Lokasi (berdasarkan IP): ${kota}, ${kabupaten}`;
        })
        .catch(error => {
            console.error('Error:', error);
            element.textContent = 'Gagal mendapatkan detail lokasi.';
        });
}

let nasehatImages = [];
let currentNasehatIndex = 0;

async function loadConfig() {
    try {
        const response = await fetch('config.txt');
        const text = await response.text();
        const lines = text.split('\n');
        const config = {};
        lines.forEach(line => {
            const [key, value] = line.split('=');
            config[key.trim()] = value.trim();
        });
        return config;
    } catch (error) {
        console.error('Error loading config:', error);
        // Konfigurasi default jika gagal memuat config.txt
        return {
            background_type: 'color',
            background_value: '#f0f0f0',
            marquee_text: 'Ada seorang yang bermata buta -dari kalangan sahabat Nabi- mendatangi Rasulullah Shallallahu ‘Alaihi wa Sallam seraya berkata, “Wahai Rasulullah, aku tidak memiliki orang yang menuntunku untuk mendatangi masjid.” Laki-laki tersebut meminta kepada Nabi Muhammad Shallallahu ‘alaihi wa sallam agar diberi keringanan untuk shalat di rumahnya. Kemudian Rasulullah Shallallahu ‘Alaihi wa Sallam pun memberikan keringanan kepadanya. Ketika laki-laki tersebut berpaling, Rasul Shallallahu ‘Alaihi wa Sallam memanggilnya kembali dan bertanya, “Apakah kamu mendengar adzan panggilan untuk shalat?” Laki-laki tersebut menjawab, “Ya.” Rasul Shallallahu ‘Alaihi wa Sallam bersabda, “Kalau begitu, jawablah (datanglah ke masjid untuk shalat berjamaah)!” (HR. Muslim)',
            nasehat_images: 'https://example.com/default-image.jpg',
            nasehat_interval: '10'
        };
    }
}

async function setBackground() {
    const config = await loadConfig();
    if (config.background_type === 'color') {
        document.body.style.backgroundColor = config.background_value;
    } else if (config.background_type === 'image') {
        document.body.style.backgroundImage = `url(${config.background_value})`;
    }
}

async function setMarqueeText() {
    const config = await loadConfig();
    const marqueeText = document.getElementById('marqueeText');
    marqueeText.textContent = config.marquee_text || 'Teks berjalan default';
}

async function setupNasehatImages() {
    const config = await loadConfig();
    nasehatImages = config.nasehat_images.split(',');
    const nasehatInterval = parseInt(config.nasehat_interval) || 10; // default 10 detik jika tidak diatur
    setNasehatImage();
    setInterval(setNasehatImage, nasehatInterval * 1000);
}

function setNasehatImage() {
    const nasehatImage = document.getElementById('nasehatImage');
    nasehatImage.src = nasehatImages[currentNasehatIndex];
    currentNasehatIndex = (currentNasehatIndex + 1) % nasehatImages.length;
}

async function init() {
    tampilkanJadwalShalat();
    updateWaktuSekarang();
    setInterval(updateWaktuSekarang, 1000);
    getLokasiPengguna();
    await setBackground();
    await setMarqueeText();
    await setupNasehatImages();
}

init();
