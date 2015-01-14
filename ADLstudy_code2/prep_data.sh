#enter the name of the device that we want to read
echo -ne "Enter Patient number \n"
# read patient
patient=patientADL007
echo -e "You entered: ${patient}\n"

#enter the name of the device that we want to read
echo -ne "Enter Device \nwristR \nwristL \nankleR \nECG1 \nECG2 \n"
# read device
device=wristR
echo -e "You entered: ${device}\n"

echo -ne "Enter Year test \n2014 \n"
# read data_test
data_test=2014
echo -e "You entered: ${data_test}\n"

#enter the name path_merged where you want to save the data
echo -ne "Where are the data? \nEnter the full path \nexample: /home/2012-0362_icare4copd/datasets/ADLstudy/Rawdata/CopiedData \n"
# read path_copied
path_copied=/home/2012-0362_icare4copd/datasets/ADLstudy/Rawdata/CopiedData
echo -e "You entered: ${path_copied}\n"

#enter the name path_merged where you want to save the data
echo -ne "Where do you want to save the data? \nEnter the full path \nexample: /home/2012-0362_icare4copd/datasets/ADLstudy/Rawdata/MergedData \n"
# read path_merged
path_merged=/home/2012-0362_icare4copd/datasets/ADLstudy/Rawdata/MergedData
echo -e "You entered: ${path_merged}\n"

#create the folder
mkdir -p ${path_merged}/${data_test}/${patient}/

echo -e "You created ${path_merged}/${data_test}/${patient}/${device}\n"

echo -e "coping from ${path_copied}/${patient}/${device}...\n"
echo -e "...to ${path_merged}/${data_test}/${patient}\n"
cp -r ${path_copied}/${patient}/${device} ${path_merged}/${data_test}/${patient}

cd ${path_merged}/${data_test}/${patient}/${device}/adl_test_2014

num_dir=$(ls -1  | wc -l)
echo -e "There are ${num_dir} directories\n"

for ((  i = 0 ;  i < ${num_dir};  i++  ))
do
  cd ${path_merged}/${data_test}/${patient}/${device}/adl_test_2014/${device}-00${i}
  cat * > data${i}.bin
  
done


cd ${path_merged}/${data_test}/${patient}/${device}/adl_test_2014
mkdir data

echo -e "\nPress [ENTER] to start...\n" 
read banane

for ((  i = 0 ;  i < ${num_dir};  i++  ))
do
  cd ${path_merged}/${data_test}/${patient}/${device}/adl_test_2014/${device}-00${i}
  mv data${i}.bin ${path_merged}/${data_test}/${patient}/${device}/adl_test_2014/data

done

cd ${path_merged}/${data_test}/${patient}/${device}/adl_test_2014/data
cat * > datatot.bin

cd /home/310153563/Code/ADLstudy/ADLstudy_code2