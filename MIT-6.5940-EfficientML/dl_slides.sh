#!/bin/bash
# Download MIT 6.5940 EfficientML Fall 2024 lecture slides from Dropbox
CURL="/c/Windows/System32/curl.exe"
UA="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36"
cd /d/George/ICT/Paper/MIT-6.5940-EfficientML/slides || exit 1

DL() {
  local fname="$1"
  local url="$2"
  if [ -f "$fname" ] && [ "$(wc -c < "$fname" 2>/dev/null)" -gt 10000 ]; then
    echo "skip: $fname"; return
  fi
  "$CURL" -L --ssl-no-revoke --max-redirs 20 --connect-timeout 30 --max-time 180 \
    -A "$UA" -H "Accept: application/pdf,*/*" \
    -o "$fname" "$url" \
    -w "%{http_code} %{size_download}B  $fname\n"
}

DL "Lec01-Introduction.pdf"           "https://www.dropbox.com/scl/fi/h3ggav4eopxsitqxzf6t2/Lec01-Introduction.pdf?rlkey=hzbpsha72p5e3ed4mdvcgcda5&st=pz5u977e&dl=1"
DL "Lec02-Basics.pdf"                  "https://www.dropbox.com/scl/fi/pxvvqyq2yu6mwgk79bq5x/Lec02-Basics.pdf?rlkey=tsumfkhrglic55jnjs4yu66ni&st=cmwnvuvn&dl=1"
DL "Lec03-Pruning-I.pdf"               "https://www.dropbox.com/scl/fi/6qspcmk8qayy7mft737gh/Lec03-Pruning-I.pdf?rlkey=9jpifc92be0sitiknpbhn9ggf&st=lml94lam&dl=1"
DL "Lec04-Pruning-II.pdf"              "https://www.dropbox.com/scl/fi/w5baiyci5cxl1ozpy6lsr/Lec04-Pruning-II.pdf?rlkey=6qxc1nz20isy9izwnqfebtukg&st=59gy1eal&dl=1"
DL "Lec05-Quantization-I.pdf"          "https://www.dropbox.com/scl/fi/qc2s9opsa2mnqfithvwz1/Lec05-Quantization-I.pdf?rlkey=sizfzkdv85etnplz1nqgngeql&st=zr1y81q7&dl=1"
DL "Lec06-Quantization-II.pdf"         "https://www.dropbox.com/scl/fi/qt970xoje5d1btek4a8cl/Lec06-Quantization-II.pdf?rlkey=lalxz5ed2hez0olwu4e4gokbj&st=f1oof15v&dl=1"
DL "Lec07-NAS-I.pdf"                   "https://www.dropbox.com/scl/fi/hxhjhxonwqyw2hfoywzcp/Lec07-Neural-Architecture-Search-I.pdf?rlkey=o6s5dglazyb2o2nrc897ccppg&st=dcjyr42l&dl=1"
DL "Lec08-NAS-II.pdf"                  "https://www.dropbox.com/scl/fi/kaia5vvmdwb2bj0xnbihm/Lec08-Neural-Architecture-Search-II.pdf?rlkey=vkp9i12ljbk4jmdfp05j3ctdy&st=hincmob7&dl=1"
DL "Lec09-Knowledge-Distillation.pdf"  "https://www.dropbox.com/scl/fi/fjgnue7z3mi1ynxbd0y5k/Lec09-Knowledge-Distillation.pdf?rlkey=cup1qhlpx3vx0nrs7wuwj6m0d&st=jzhogqwp&dl=1"
DL "Lec10-MCUNet.pdf"                  "https://www.dropbox.com/scl/fi/udgt7c6sw5wpvrbh7us2t/Lec10-MCUNet.pdf?rlkey=sryh8aiehv8792uk1ocu00icn&st=8v4oql2g&dl=1"
DL "Lec11-TinyEngine.pdf"              "https://www.dropbox.com/scl/fi/z1980bzepegz85ara200n/Lec11-TinyEngine.pdf?rlkey=5evtfesbourbo03nlhazmiy1r&st=ehihqr5t&dl=1"
DL "Lec12-Transformers-and-LLM.pdf"    "https://www.dropbox.com/scl/fi/4o87goykb0aoyopps02t4/Lec12-Transformers-and-LLM.pdf?rlkey=k97sdf3ls3xxz4fgvte6px279&dl=1"
DL "Lec13-LLM-Deployment.pdf"          "https://www.dropbox.com/scl/fi/aa5ea0hrc68cn3fh18nan/Lec13-LLM-Deployment.pdf?rlkey=gzq9yiddx4bnh14bxomtfmcoj&dl=1"
DL "Lec14-LLM-Post-training.pdf"       "https://www.dropbox.com/scl/fi/ed32dovpq8no4571xmkzs/Lec14-LLM-Post-training.pdf?rlkey=5re66ef6shk3tr3v31ey6hzzo&st=d9n9h7ql&dl=1"
DL "Lec15-Long-Context-LLM.pdf"        "https://www.dropbox.com/scl/fi/aorbruqhmbu3cpqtnbuyo/Lec15-Long-Context-LLM.pdf?rlkey=i7d5urg0m4mm96wc82nx76lgs&st=nssefmxf&dl=1"
DL "Lec16-Vision-Transformers.pdf"     "https://www.dropbox.com/scl/fi/lr3jlbzoa1du3og22wbiw/Lec16-Vision-Transformers.pdf?rlkey=6ejlatw4kpfzxgxg7zx2a6zo2&st=7btq6r53&dl=1"
DL "Lec17-GANs-Video-PointCloud.pdf"   "https://www.dropbox.com/scl/fi/6o45qs8xm20qhzkc192bv/Lec17-Efficient-GANs-Video-PointCloud.pdf?rlkey=71hrp50kjtl8zz8w7jntvbwn0&st=ywq378y5&dl=1"
DL "Lec18-Diffusion-Models.pdf"        "https://www.dropbox.com/scl/fi/f4end70haytw1nalboxp2/Lec18-Diffusion-Models.pdf?rlkey=emaxca812n2npb2rinq1nor64&st=ed3ziw4o&dl=1"
DL "Lec19-Distributed-Training-I.pdf"  "https://www.dropbox.com/scl/fi/85ud2gzrtyllgeqgpv9gs/Lec19-Distributed-Training-I.pdf?rlkey=80t52w3peqqf8oanpc6ojmvnf&st=jn4yxsjy&dl=1"
DL "Lec20-Distributed-Training-II.pdf" "https://www.dropbox.com/scl/fi/c0w7j7dxduuf8ply7lzeb/Lec20-Distributed-Training-II.pdf?rlkey=ynh3yx4jf99nojklt0ki7zh0y&st=vxzkzdt4&dl=1"
DL "Lec21-On-Device-Training.pdf"      "https://www.dropbox.com/scl/fi/35992g5bz2sa1hxo3dmn6/Lec21-On-Device-Training-And-Transfer-Learning.pdf?rlkey=yqym2zffstfrdsui371lkvael&st=sqmt0oro&dl=1"
DL "Lec22-Course-Summary.pdf"          "https://www.dropbox.com/scl/fi/cn0wr4zxuv4hvpce81lo1/Course-Summary.pdf?rlkey=ycn79vnsu2n7395fz1v04khz0&st=z86d0rap&dl=1"
DL "Lec23-Quantum-ML-II.pdf"           "https://www.dropbox.com/scl/fi/wxpnpwkrl6pw7lb4n4vrg/Lec23-Quantum-ML-II.pdf?rlkey=21msd9zdilhry5pydlkvbn7n4&st=aoyc9pzv&dl=1"

echo "=== DONE 6.5940 slides ==="
ls -la *.pdf 2>/dev/null | awk '{print $5" B  "$NF}'
