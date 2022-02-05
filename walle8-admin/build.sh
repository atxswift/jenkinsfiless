if [ $# -ne 1 ]
then
       echo "usage: ./$0 <environment>"
       exit 1
fi

configuration=$1

echo "n" | npm install --prefer-offline --no-audit --progress=false

sed -i "s/size?: 'sm' | 'lg' | 'xl'/size?: 'md'| 'sm' | 'lg' | 'xl'/g" node_modules/@ng-bootstrap/ng-bootstrap/modal/modal-config.d.ts

node --max_old_space_size=24576 node_modules/@angular/cli/bin/ng build --prod --aot "--configuration" $configuration

