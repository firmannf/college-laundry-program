program Program_Laundry;
uses crt, sysutils;

const
     max = 1000;

type
    laundry = record
            idOrder:string[5];
            namaPelanggan:string[20];
            berat:string[2];
            tglMasuk:string[10];
            tglSelesai:string[10];
            totalBayar:integer;
    end;
    TLaundry = array[1..max] of laundry;

var
   dataLaundry:TLaundry;
   banyakLaundry:integer;

procedure lihatData;
var
   i,j,tampil:integer;
   key:char;

begin
     j := 1;

     if (banyakLaundry <= 10) then
     begin
          clrscr;
          gotoxy(34,2);
          writeln('DATA LAUNDRY');
          writeln();
          writeln(' ',#218#196#196#196#196#196#196#196#196#196#196#194#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#194#196#196#196#196#194#196#196#196#196#196#196#196#196#196#196#196#196#196#194#196#196#196#196#196#196#196#196#196#196#196#196#196#194#196#196#196#196#196#196#196#196#196#191);
          writeln(' ',#179,' Id Order ',#179,'    Nama Pelanggan    ',#179,' Kg ',#179,'  Tgl Masuk  ',#179,' Tgl Selesai ',#179,'  Bayar  ',#179);
          writeln(' ',#195#196#196#196#196#196#196#196#196#196#196#197#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#197#196#196#196#196#197#196#196#196#196#196#196#196#196#196#196#196#196#196#197#196#196#196#196#196#196#196#196#196#196#196#196#196#197#196#196#196#196#196#196#196#196#196#180);
          for i := 1 to banyakLaundry do
              writeln(' ',#179,' ',dataLaundry[i].idOrder:8,' ',#179,' ',dataLaundry[i].namaPelanggan:20,' ',#179,' ',dataLaundry[i].berat:2,' ',#179,' ',dataLaundry[i].tglMasuk:11,' ',#179,' ',dataLaundry[i].tglSelesai:11,' ',#179,' ',dataLaundry[i].totalBayar:7,' ',#179);
          writeln(' ',#192#196#196#196#196#196#196#196#196#196#196#193#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#193#196#196#196#196#193#196#196#196#196#196#196#196#196#196#196#196#196#196#193#196#196#196#196#196#196#196#196#196#196#196#196#196#193#196#196#196#196#196#196#196#196#196#217);

          writeln();writeln();writeln();
          write(' Press any key to continue...');
          readkey;
     end
     else if (banyakLaundry > 10) then
         begin
              tampil := 10;
              repeat
                    clrscr;
                    gotoxy(34,2);
                    writeln('DATA LAUNDRY');
                    gotoxy((80 - (length(IntToStr(j)) + length(IntToStr(tampil)) + 3)) div 2,3);
                    writeln(j,' - ',tampil);
                    writeln();
                    writeln(' ',#218#196#196#196#196#196#196#196#196#196#196#194#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#194#196#196#196#196#194#196#196#196#196#196#196#196#196#196#196#196#196#196#194#196#196#196#196#196#196#196#196#196#196#196#196#196#194#196#196#196#196#196#196#196#196#196#191);
                    writeln(' ',#179,' Id Order ',#179,'    Nama Pelanggan    ',#179,' Kg ',#179,'  Tgl Masuk  ',#179,' Tgl Selesai ',#179,'  Bayar  ',#179);
                    writeln(' ',#195#196#196#196#196#196#196#196#196#196#196#197#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#197#196#196#196#196#197#196#196#196#196#196#196#196#196#196#196#196#196#196#197#196#196#196#196#196#196#196#196#196#196#196#196#196#197#196#196#196#196#196#196#196#196#196#180);

                    for i := j to tampil do
                        writeln(' ',#179,' ',dataLaundry[i].idOrder:8,' ',#179,' ',dataLaundry[i].namaPelanggan:20,' ',#179,' ',dataLaundry[i].berat:2,' ',#179,' ',dataLaundry[i].tglMasuk:11,' ',#179,' ',dataLaundry[i].tglSelesai:11,' ',#179,' ',dataLaundry[i].totalBayar:7,' ',#179);
                    writeln(' ',#192#196#196#196#196#196#196#196#196#196#196#193#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#193#196#196#196#196#193#196#196#196#196#196#196#196#196#196#196#196#196#196#193#196#196#196#196#196#196#196#196#196#196#196#196#196#193#196#196#196#196#196#196#196#196#196#217);

                    writeln();writeln();writeln();
                    writeln(' Navigasi Tekan Left/Right, Esc = Main Menu');
                    key := readkey;
                    case key of
                    #0 : begin
                              key := readkey;
                              case key of
                                   #75 : begin
                                              if (tampil > 10) and (j>0) then
                                              begin
                                                   if (tampil mod 10 <> 0) then
                                                      tampil := tampil - (tampil mod 10)
                                                   else
                                                       tampil := tampil - 10;
                                                   
                                                   j := j - 10;
                                              end;
                                         end;
                                   #77 : begin
                                              if (tampil <= 10) or (tampil <= banyakLaundry) and (j < banyakLaundry - (banyakLaundry mod 10)) then
                                              begin
                                                   tampil := tampil + 10;
                                                   j := j + 10;
                                                   if (tampil >= banyakLaundry) then
                                                   begin
                                                      tampil := banyakLaundry;
                                                      if (tampil mod 10 <> 0) then
                                                         j := banyakLaundry - (banyakLaundry mod 10) + 1
                                                      else
                                                          j := tampil - 9;
                                                   end;
                                              end;
                                         end;
                              end;
                         end;
                    end;
              until key = #27
         end;
end;

procedure cariDataId(id:string; var found:boolean; var posisi:integer);
var
   i:integer;

begin
     i := 1;
     while (dataLaundry[i].idOrder <> id) and (i<banyakLaundry) do
           i := i + 1;

     if dataLaundry[i].idOrder = id then
     begin
        found := true;
        posisi := i;
     end
     else
         found := false;
end;

procedure cariDataNama(i:integer; nama:string; var found:boolean; var posisi:integer);

begin
     while (dataLaundry[i].namaPelanggan <> nama) and (i<banyakLaundry) do
           i := i + 1;

     if dataLaundry[i].namaPelanggan = nama then
     begin
        found := true;
        posisi := i;
     end
     else
         found := false;
end;

procedure cariData;
var
   tempId:string[8];
   tempNama:string[20];
   tempLaundry:TLaundry;
   position:integer;
   found:boolean;
   menuInput:char;
   i, j:integer;

begin
     clrscr;
     gotoxy(32,2);
     writeln('CARI DATA LAUNDRY');

     gotoxy(27,4);writeln('1. Berdasar Id Order');
     gotoxy(27,5);writeln('2. Berdasar Nama Pelanggan');
     gotoxy(27,7);write('Masukkan Pilihan Anda : ');readln(menuInput);
     if (menuInput = '1') then
     begin
          clrscr;
          gotoxy(32,2);
          writeln('CARI DATA LAUNDRY');
          writeln();
          write(' Masukkan Id Order Yang Anda Cari : ');readln(tempId);
          cariDataId(tempId,found,position);
          if (found) then
          begin
               writeln();
               writeln(' ',#218#196#196#196#196#196#196#196#196#196#196#194#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#194#196#196#196#196#194#196#196#196#196#196#196#196#196#196#196#196#196#196#194#196#196#196#196#196#196#196#196#196#196#196#196#196#194#196#196#196#196#196#196#196#196#196#191);
               writeln(' ',#179,' Id Order ',#179,'    Nama Pelanggan    ',#179,' Kg ',#179,'  Tgl Masuk  ',#179,' Tgl Selesai ',#179,'  Bayar  ',#179);
               writeln(' ',#195#196#196#196#196#196#196#196#196#196#196#197#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#197#196#196#196#196#197#196#196#196#196#196#196#196#196#196#196#196#196#196#197#196#196#196#196#196#196#196#196#196#196#196#196#196#197#196#196#196#196#196#196#196#196#196#180);
               writeln(' ',#179,' ',dataLaundry[position].idOrder:8,' ',#179,' ',dataLaundry[position].namaPelanggan:20,' ',#179,' ',dataLaundry[position].berat:2,' ',#179,' ',dataLaundry[position].tglMasuk:11,' ',#179,' ',dataLaundry[position].tglSelesai:11,' ',#179,' ',dataLaundry[position].totalBayar:7,' ',#179);
               writeln(' ',#192#196#196#196#196#196#196#196#196#196#196#193#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#193#196#196#196#196#193#196#196#196#196#196#196#196#196#196#196#196#196#196#193#196#196#196#196#196#196#196#196#196#196#196#196#196#193#196#196#196#196#196#196#196#196#196#217);
          end
          else
              begin
                   textcolor(12);
                   writeln(' Data Tidak Ditemukan!');
                   textcolor(white);
              end;
     end
     else
         if (menuInput = '2') then
         begin
              clrscr;
              gotoxy(32,2);
              writeln('CARI DATA LAUNDRY');
              writeln();
              write(' Masukkan Nama Pelanggan Yang Anda Cari : ');readln(tempNama);
              i := 1;
              j := 1;
              cariDataNama(i,upcase(tempNama),found,position);
              if (found) then
              begin
                   tempLaundry[j] := dataLaundry[position];
                   i := position + 1;
                   while i <= banyakLaundry do
                   begin
                        cariDataNama(i,upcase(tempNama),found,position);
                        if (found) then
                        begin
                             j := j + 1;
                             templaundry[j] := dataLaundry[position];
                             i := position + 1;
                        end
                        else
                            begin
                                 i := banyakLaundry + 1;
                            end;
                   end;
                   
                   writeln();
                   writeln(' ',#218#196#196#196#196#196#196#196#196#196#196#194#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#194#196#196#196#196#194#196#196#196#196#196#196#196#196#196#196#196#196#196#194#196#196#196#196#196#196#196#196#196#196#196#196#196#194#196#196#196#196#196#196#196#196#196#191);
                   writeln(' ',#179,' Id Order ',#179,'    Nama Pelanggan    ',#179,' Kg ',#179,'  Tgl Masuk  ',#179,' Tgl Selesai ',#179,'  Bayar  ',#179);
                   writeln(' ',#195#196#196#196#196#196#196#196#196#196#196#197#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#197#196#196#196#196#197#196#196#196#196#196#196#196#196#196#196#196#196#196#197#196#196#196#196#196#196#196#196#196#196#196#196#196#197#196#196#196#196#196#196#196#196#196#180);
                   for i := 1 to j do
                        writeln(' ',#179,' ',tempLaundry[i].idOrder:8,' ',#179,' ',tempLaundry[i].namaPelanggan:20,' ',#179,' ',tempLaundry[i].berat:2,' ',#179,' ',tempLaundry[i].tglMasuk:11,' ',#179,' ',tempLaundry[i].tglSelesai:11,' ',#179,' ',tempLaundry[i].totalBayar:7,' ',#179);
                   writeln(' ',#192#196#196#196#196#196#196#196#196#196#196#193#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#193#196#196#196#196#193#196#196#196#196#196#196#196#196#196#196#196#196#196#193#196#196#196#196#196#196#196#196#196#196#196#196#196#193#196#196#196#196#196#196#196#196#196#217);
              end
              else
                  begin
                       textcolor(12);
                       writeln(' Data Tidak Ditemukan!');
                       textcolor(white);
                  end;
         end
         else
             begin
                  textcolor(12);
                  gotoxy(27,10);
                  writeln('Pilihan Tidak Ditemukan!');
                  textcolor(white);
             end;

         writeln();writeln();writeln();
         write(' Press any key to continue...');
         readkey;
end;

procedure tambahData;
var
   YY, MM, DD : Word;
   tempId:string[5];
   tempNama:string[20];
   found:boolean;
   position:integer;
   hariSelesai:integer;

begin
     clrscr;
     gotoxy(31,2);
     writeln('TAMBAH DATA LAUNDRY');
     if banyakLaundry = max then
     begin
          gotoxy(20,4);
          writeln('Data Penuh, Tidak bisa menambahkan data!');
     end
     else
         begin
              writeln();
              hariSelesai := 0;
              write(' Masukkan Id Order              : ');readln(tempId);
              cariDataId(tempId,found,position);
              if (found = false) then
              begin
                   banyakLaundry := banyakLaundry + 1;
                   dataLaundry[banyakLaundry].idOrder := tempId;
                   write(' Masukkan Nama Pelanggan        : ');readln(tempNama);
                   dataLaundry[banyakLaundry].namaPelanggan := upcase(tempNama);
                   DeCodeDate (Date,YY,MM,DD);
                   dataLaundry[banyakLaundry].tglMasuk := format('%d/%d/%d ',[dd,mm,yy]);
                   writeln(' Tanggal Masuk                  : ',dataLaundry[banyakLaundry].tglMasuk);
                   write(' Masukkan Berat Cucian (1-99Kg) : ');readln(dataLaundry[banyakLaundry].berat);
                   if (StrToInt(dataLaundry[banyakLaundry].berat) < 10) then
                      hariSelesai := 3
                   else
                       if (StrToInt(dataLaundry[banyakLaundry].berat) >= 10) then
                       begin
                            hariSelesai := 3 + (StrToInt(dataLaundry[banyakLaundry].berat) div 10);
                       end;
                   dataLaundry[banyakLaundry].tglSelesai := format('%d/%d/%d ',[dd+hariSelesai,mm,yy]);
                   writeln(' Tanggal Selesai                : ',dataLaundry[banyakLaundry].tglSelesai);
                   dataLaundry[banyakLaundry].totalBayar := StrToInt(dataLaundry[banyakLaundry].berat) * 5000;
                   writeln(' Total Bayar (5000/Kg)          : ',dataLaundry[banyakLaundry].totalBayar);
              end
              else
                  begin
                       textcolor(12);
                       writeln(' Id Order Tidak Boleh Duplikat!');
                       textcolor(white);
                  end;
         end;

     writeln();writeln();writeln();
     write(' Press any key to continue...');
     readkey;
end;

procedure editData;
var
   tempId:string[5];
   tempNama:string[20];
   found:boolean;
   position:integer;
   YY, MM, DD : Word;
   hariSelesai:integer;

begin
     clrscr;
     hariSelesai := 0;
     gotoxy(32,2);
     writeln('EDIT DATA LAUNDRY');
     writeln();
     write(' Masukkan Id Order Yang Akan Di Edit : ');readln(tempId);
     cariDataId(tempId,found,position);
     if (found) then
     begin
          writeln();
          write(' ',dataLaundry[position].idOrder:20,' -> Masukkan Id Order Yang Baru       : ');readln(tempId);
          if (dataLaundry[position].idOrder = tempId) then
          begin
               dataLaundry[position].idOrder := tempId;
               write(' ',dataLaundry[position].namaPelanggan:20,' -> Masukkan Nama Pelanggan Yang Baru : ');readln(tempNama);
               dataLaundry[position].namaPelanggan := upcase(tempNama);
               write(' ',dataLaundry[position].berat:20,' -> Masukkan Berat Cucian Yang Baru   : ');readln(dataLaundry[position].berat);
               write(' ',dataLaundry[position].tglMasuk:20,' -> Masukkan Tanggal Masuk Yang Baru  : ');readln(dataLaundry[position].tglMasuk);
               DeCodeDate(StrToDate(dataLaundry[position].tglMasuk),YY,MM,DD);
               if (StrToInt(dataLaundry[position].berat) < 10) then
                      hariSelesai := 3
                   else
                       if (StrToInt(dataLaundry[position].berat) >= 10) then
                       begin
                            hariSelesai := 3 + (StrToInt(dataLaundry[position].berat) div 10);
                       end;
               writeln(' ',dataLaundry[position].tglSelesai:20,' -> Tanggal Selesai Yang Baru         : ',format('%d/%d/%d ',[dd+hariSelesai,mm,yy]));
               dataLaundry[position].tglSelesai := format('%d/%d/%d ',[dd+hariSelesai,mm,yy]);
               writeln(' ',dataLaundry[position].totalBayar:20,' -> Total Bayar Yang Baru             : ',StrToInt(dataLaundry[position].berat) * 5000);
               dataLaundry[position].totalBayar := StrToInt(dataLaundry[position].berat) * 5000;
          end
             else
             begin
                  cariDataId(tempId,found,position);
                  if (found = false) then
                  begin
                       dataLaundry[position].idOrder := tempId;
                       write(' ',dataLaundry[position].namaPelanggan:20,' -> Masukkan Nama Pelanggan Yang Baru : ');readln(tempNama);
                       dataLaundry[position].namaPelanggan := upcase(tempNama);
                       write(' ',dataLaundry[position].berat:20,' -> Masukkan Berat Cucian Yang Baru   : ');readln(dataLaundry[position].berat);
                       write(' ',dataLaundry[position].tglMasuk:20,' -> Masukkan Tanggal Masuk Yang Baru  : ');readln(dataLaundry[position].tglMasuk);
                       DeCodeDate(StrToDate(dataLaundry[position].tglMasuk),YY,MM,DD);
                       if (StrToInt(dataLaundry[position].berat) < 10) then
                          hariSelesai := 3
                       else
                           if (StrToInt(dataLaundry[position].berat) >= 10) then
                           begin
                                hariSelesai := 3 + (StrToInt(dataLaundry[position].berat) div 10);
                           end;
                       writeln(' ',dataLaundry[position].tglSelesai:20,' -> Tanggal Selesai Yang Baru         : ',format('%d/%d/%d ',[dd+hariSelesai,mm,yy]));
                       dataLaundry[position].tglSelesai := format('%d/%d/%d ',[dd+hariSelesai,mm,yy]);
                       writeln(' ',dataLaundry[position].totalBayar:20,' -> Total Bayar Yang Baru             : ',StrToInt(dataLaundry[position].berat) * 5000);
                       dataLaundry[position].totalBayar := StrToInt(dataLaundry[position].berat) * 5000;
                  end
                  else
                      begin
                           textcolor(12);
                           writeln();
                           writeln(' Id Order Tidak Boleh Duplikat!');
                           textcolor(white);
                      end;
             end;
     end
     else
         begin
              textcolor(12);
              writeln(' Id Order Tidak Ditemukan!');
              textcolor(white);
         end;

     writeln();writeln();writeln();
     write(' Press any key to continue...');
     readkey;
end;

procedure hapusData;
var
   tempId:string[5];
   found:boolean;
   position:integer;
   menuInput:char;
   i:integer;

begin
     clrscr;
     gotoxy(31,2);
     writeln('HAPUS DATA LAUNDRY');
     writeln();
     write(' Masukkan Id Order Yang Akan Dihapus : ');readln(tempId);
     cariDataId(tempId,found,position);
     if (found) then
     begin
          writeln();
          writeln(' Data Yang Akan Dihapus adalah -> ');
          writeln(' Id Order        : ',dataLaundry[position].idOrder);
          writeln(' Nama Pelanggan  : ',dataLaundry[position].namaPelanggan);
          writeln(' Berat           : ',dataLaundry[position].berat);
          writeln(' Tanggal Masuk   : ',dataLaundry[position].tglMasuk);
          writeln(' Tanggal Selesai : ',dataLaundry[position].tglSelesai);
          writeln(' Total Bayar     : ',dataLaundry[position].totalBayar);
          writeln();

          write(' Apakah Anda Yakin [Y/N] ? ');readln(menuInput);
          if (upcase(menuInput) = 'Y') then
          begin
                for i := position + 1 to banyakLaundry do
                       dataLaundry[i-1] := dataLaundry[i];
                banyakLaundry := banyakLaundry - 1;
                writeln(' Penghapusan Telah Dilakukan!');
                writeln();
          end;
     end
     else
         begin
              textcolor(12);
              writeln(' Id Order Tidak Ditemukan!');
              textcolor(white);
         end;

     writeln();writeln();writeln();
     write(' Press any key to continue...');
     readkey;
end;

procedure urutDataId;
var
   i,j:integer;
   min:integer;
   temp:laundry;
begin
     for i := 1 to banyakLaundry - 1 do
     begin
          min := i;
          for j := i+1 to banyakLaundry do
          begin
               if dataLaundry[min].idOrder > dataLaundry[j].idOrder then
                  min := j;
          end;
          temp := dataLaundry[i];
          dataLaundry[i] := dataLaundry[min];
          dataLaundry[min] := temp;
     end;
end;

procedure urutDataNama;
var
   i,j:integer;
   min:integer;
   temp:laundry;
begin
     for i := 1 to banyakLaundry - 1 do
     begin
          min := i;
          for j := i+1 to banyakLaundry do
          begin
               if dataLaundry[min].namaPelanggan > dataLaundry[j].namaPelanggan then
                  min := j;
          end;
          temp := dataLaundry[i];
          dataLaundry[i] := dataLaundry[min];
          dataLaundry[min] := temp;
     end;
end;

procedure urutDataIdDesc;
var
   i,j:integer;
   min:integer;
   temp:laundry;
begin
     for i := 1 to banyakLaundry - 1 do
     begin
          min := i;
          for j := i+1 to banyakLaundry do
          begin
               if dataLaundry[min].idOrder < dataLaundry[j].idOrder then
                  min := j;
          end;
          temp := dataLaundry[i];
          dataLaundry[i] := dataLaundry[min];
          dataLaundry[min] := temp;
     end;
end;

procedure urutDataNamaDesc;
var
   i,j:integer;
   min:integer;
   temp:laundry;
begin
     for i := 1 to banyakLaundry - 1 do
     begin
          min := i;
          for j := i+1 to banyakLaundry do
          begin
               if dataLaundry[min].namaPelanggan < dataLaundry[j].namaPelanggan then
                  min := j;
          end;
          temp := dataLaundry[i];
          dataLaundry[i] := dataLaundry[min];
          dataLaundry[min] := temp;
     end;
end;

procedure urutData;
var
   menuInput:char;
begin
     clrscr;
     gotoxy(32,2);
     writeln('URUT DATA LAUNDRY');

     gotoxy(24,4);writeln('1. Berdasar Id Order (asc)');
     gotoxy(24,5);writeln('2. Berdasar Id Order (desc)');
     gotoxy(24,6);writeln('3. Berdasar Nama Pelanggan (asc)');
     gotoxy(24,7);writeln('4. Berdasar Nama Pelanggan (desc)');
     gotoxy(27,9);write('Masukkan Pilihan Anda : ');readln(menuInput);
     if (menuInput = '1') then
        urutDataId
     else
         if (menuInput = '2') then
            urutDataIdDesc
         else
             if (menuInput = '3') then
                urutDataNama
             else
                 if (menuInput = '4') then
                    urutDataNamaDesc
                 else
                     begin
                          textcolor(12);
                          gotoxy(27,10);
                          writeln('Pilihan Tidak Ditemukan!');
                          textcolor(white);
                     end;
     
     gotoxy(27,11);
     writeln('Pengurutan Telah Dilakukan!');
     writeln();writeln();writeln();
     write(' Press any key to continue...');
     readkey;
end;

procedure filterData;
var
   keyword:string[20];
   temp:TLaundry;
   i:integer;
   banyakTemp:integer;

begin
     clrscr;
     gotoxy(31,2);
     writeln('FILTER DATA LAUNDRY');
     writeln();
     write(' Masukkan Keyword (Nama Pelanggan) : ');readln(keyword);
     banyakTemp := 0;
     for i := 1 to banyakLaundry do
     begin
          if(pos(upcase(keyword),dataLaundry[i].namaPelanggan) > 0) then
          begin
               banyakTemp := banyakTemp + 1;
               temp[banyakTemp] := dataLaundry[i];
          end;
     end;

     writeln();
     writeln(' ',#218#196#196#196#196#196#196#196#196#196#196#194#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#194#196#196#196#196#194#196#196#196#196#196#196#196#196#196#196#196#196#196#194#196#196#196#196#196#196#196#196#196#196#196#196#196#194#196#196#196#196#196#196#196#196#196#191);
     writeln(' ',#179,' Id Order ',#179,'    Nama Pelanggan    ',#179,' Kg ',#179,'  Tgl Masuk  ',#179,' Tgl Selesai ',#179,'  Bayar  ',#179);
     writeln(' ',#195#196#196#196#196#196#196#196#196#196#196#197#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#197#196#196#196#196#197#196#196#196#196#196#196#196#196#196#196#196#196#196#197#196#196#196#196#196#196#196#196#196#196#196#196#196#197#196#196#196#196#196#196#196#196#196#180);
     for i := 1 to banyakTemp do
     begin
          writeln(' ',#179,' ',temp[i].idOrder:8,' ',#179,' ',temp[i].namaPelanggan:20,' ',#179,' ',temp[i].berat:2,' ',#179,' ',temp[i].tglMasuk:11,' ',#179,' ',temp[i].tglSelesai:11,' ',#179,' ',temp[i].totalBayar:7,' ',#179);
     end;
     writeln(' ',#192#196#196#196#196#196#196#196#196#196#196#193#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#196#193#196#196#196#196#193#196#196#196#196#196#196#196#196#196#196#196#196#196#193#196#196#196#196#196#196#196#196#196#196#196#196#196#193#196#196#196#196#196#196#196#196#196#217);

     writeln();writeln();writeln();
     write(' Press any key to continue...');
     readkey;
end;

procedure saveData;
var
   f:file of laundry;
   i:integer;

begin
     clrscr;
     writeln();
     writeln(' Simpan Data Ke File...');
     assign(f, 'DATA-LAUNDRY.dat');
     rewrite(f);
     for i := 1 to banyakLaundry do
         write(f, dataLaundry[i]);
     close(f);
     writeln(' Data Telah Disimpan...');
     writeln();writeln();writeln();
     write(' Press any key to continue...');
     readkey;
end;

procedure bacaData;
var
   f:file of Laundry;
   newDataLaundry:Laundry;

begin
     clrscr;
     gotoxy(27,4);
     writeln('WELCOME TO CUCICUCI LAUNDRY');
     writeln();
     assign(f, 'DATA-LAUNDRY.dat');
     {I-}
     reset(f);
     {I+}
     if ioresult=0 then
     begin
          banyakLaundry := 0;
          while eof(f)=false do
          begin
               read(f, newDataLaundry);
               if banyakLaundry < max then
               begin
                    banyakLaundry := banyakLaundry + 1;
                    dataLaundry[banyakLaundry] := newDataLaundry;
               end;
          end;
          close(f);
          writeln(' Membaca File DATA-LAUNDRY.dat...');
     end
     else
         begin
              textcolor(12);
              writeln();
              writeln(' File DATA-LAUNDRY.dat tidak ditemukan. Tidak ada data yang dibaca!');
              textcolor(white);
         end;

     writeln();writeln();writeln();
     write(' Press any key to continue...');
     readkey;
end;

procedure menu;
var
   i:integer;
   menuInput:char;

begin
     repeat
           clrscr;
           gotoxy(32,4);
           write('CUCICUCI LAUNDRY');

            gotoxy(25,6);
            write(#218);
            for i := 1 to 28 do
                write(#196);
            write(#191);

            gotoxy(25,7);
            write(#179,'          MAIN MENU         ',#179);
     
            gotoxy(25,8);
            write(#195);
            for i := 1 to 28 do
                write(#196);
            write(#180);

            gotoxy(25,9);
            write(#179,' 1. Lihat Data              ',#179);
     
            gotoxy(25,10);
            write(#179,' 2. Tambah Data             ',#179);
     
            gotoxy(25,11);
            write(#179,' 3. Edit Data               ',#179);
     
            gotoxy(25,12);
            write(#179,' 4. Hapus Data              ',#179);
     
            gotoxy(25,13);
            write(#179,' 5. Urut Data               ',#179);
     
            gotoxy(25,14);
            write(#179,' 6. Cari Data               ',#179);
     
            gotoxy(25,15);
            write(#179,' 7. Filter Data             ',#179);
     
            gotoxy(25,16);
            write(#179,' 8. Keluar                  ',#179);

            gotoxy(25,17);
            write(#195);
            for i := 1 to 28 do
                write(#196);
            write(#180);

            gotoxy(25,18);
            write(#179,' Masukkan Pilihan Anda : ');write('   ',#179);

            gotoxy(25,19);
            write(#192);
            for i := 1 to 28 do
                write(#196);
            write(#217);

            gotoxy(51,18);
            readln(menuInput);
            if (menuInput = '1') then
               lihatData
            else
                if (menuInput = '2') then
                             tambahData
                else
                    if (menuInput = '3') then
                       editData
                    else
                        if (menuInput = '4') then
                           hapusData
                        else
                            if (menuInput = '5') then
                               urutData
                            else
                                if (menuInput = '6') then
                                   cariData
                                else
                                    if (menuInput = '7') then
                                       filterData;
     until menuInput = '8';
     saveData;
end;

begin
     bacaData;
     textcolor(white);
     menu;
end.
