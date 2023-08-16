function y= kluster()
ipk=input('Masukan IPK : ');
tm=input('Masukan TM :');
data=[ipk tm];
load center.dat
center1=center(1,:);
center2=center(2,:);
ujiA=norm(data-center1)
ujiB=norm(data-center2)
if ujiA < ujiB
    Hasil='Mendapatkan Beasiswa'
else
    Hasil='Tidak Beasiswa'
end